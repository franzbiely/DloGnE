<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Valuation;
use App\Property;

use App\Http\Controllers\MediaController;
use Response;
use Input;
use DB;

class ValuationsController extends Controller
{
    public function __construct(){
        $this->middleware('jwt.auth');
    }
    
    public function index(Request $request) {        
        $search_term = $request->input('search');
        $limit = $request->input('limit', 100);

        if ($search_term) {
            // $valuations = Valuation::orderBy('id', 'DESC')->
            //     where('code', 'LIKE', "%$search_term%")->
            //     with(
            //         array('City'=>function($query){
            //             $query->select('id','name');
            //         })
            //     )->select('id', 'code', 'city_id')->paginate($limit); 

            // $valuations->appends(array(
            //     'search' => $search_term,
            //     'limit' => $limit
            // ));
        }
        else
        {
            $valuations = Valuation::orderBy('id', 'DESC')->with(
                array(
                    'Property'=>function($query){
                        $query->select('id','code');
                    }
                )
            )->select('id', 
                'date',
                'description',
                'property_id',
                'property_value',
                'land_component',
                'insurance_value',
                'forced_sale_value',
                'improvement_component',
                'area',
                'land_value_rate'
            )->paginate($limit); 

            $valuations->appends(array(            
                'limit' => $limit
            ));   
        }
        return Response::json($this->transformCollection($valuations), 200);
    }

    public function getByProperty(Request $request, $property_id) {
        $search_term = $request->input('search');
        $limit = $request->input('limit', 100);
        $valuations = Valuation::where(array('property_id'=>$property_id))
            ->orderBy('id', 'DESC')
            ->with(
                array(
                    'Property'=>function($query){
                        $query->select('id','code');
                    }
                )
            )->select('valuations.id', 
                'date',
                'description',
                'property_id',
                'property_value',
                'land_component',
                'insurance_value',
                'forced_sale_value',
                'improvement_component',
                'area',
                'land_value_rate',
                DB::raw('COUNT(media.id) AS pdfs_count'),
                DB::raw('media.file_path as file_path'),
                DB::raw('media.file_name as file_name')
            )->leftJoin('media', function($join) {
                $join->on('media.source_id', '=', 'valuations.id');
                $join->where('media.source_table', '=', 'valuations');
                $join->where('media.media_type', '=', 'attached');
            })
            ->groupBy('valuations.id')
            ->paginate($limit); 

        $valuations->appends(array(            
            'limit' => $limit
        ));
        return Response::json($this->transformCollection($valuations), 200);
    }


    public function store(Request $request) {
        $media_controller = new MediaController();
        try {
            $valuation = Valuation::create($request->all());
        }
        catch(\Exception $e){
            return 'Error on inserting valuation details ' . $e->getMessage();
        }
        if(isset($request->photo_ids)) {
            try {
                foreach($request->photo_ids as $photo_id) {
                    $media_controller->update_source_id($photo_id, $valuation->id);
                }
                foreach($request->pdf_ids as $pdf_id) {
                    $media_controller->update_source_id($pdf_id, $valuation->id);
                }
            }
            catch(\Exception $e){
                return 'Error on updating image source ' . $e->getMessage();
            }
        }
        

        return Response::json([
                'message' => 'Data created succesfully',
                'data' => $this->transform($valuation)
        ]);
    }
    


    public function show($id)
    {
        $valuation = Valuation::with(
            array('Property'=>function($query){
                $query->select('id','code');
            })
            )->find($id);
        if(!$valuation){
            return Response::json([
                'error' => [
                    'message' => 'Data does not exist'
                ]
            ], 404);
        }

         // get previous Valuation id
        $previous = Valuation::where('id', '<', $valuation->id)->max('id');

        // get next Valuation id
        $next = Valuation::where('id', '>', $valuation->id)->min('id');

        

        return Response::json([
            'previous_Valuation_id'=> $previous,
            'next_Valuation_id'=> $next,
            'data' => $valuation
        ], 200);
    }

    public function update(Request $request, $id)
    {    
        try {
            $valuation = Valuation::find($id);
            if(isset($request->date)) $valuation->date = $request->date;
            if(isset($request->description)) $valuation->description = $request->description;
            if(isset($request->property_id)) $valuation->property_id = $request->property_id;
            if(isset($request->property_value))         $valuation->property_value = $request->property_value;
            if(isset($request->land_component))     $valuation->land_component = $request->land_component;
            if(isset($request->insurance_value))         $valuation->insurance_value = $request->insurance_value;
            if(isset($request->forced_sale_value))         $valuation->forced_sale_value = $request->forced_sale_value;
            if(isset($request->improvement_component)) $valuation->improvement_component = $request->improvement_component;
            if(isset($request->area))               $valuation->area = $request->area;
            if(isset($request->land_value_rate))               $valuation->land_value_rate = $request->land_value_rate;
            
            $valuation->save(); 
        }
        catch(\Exception $e){
            return 'Error on updating valuation details  ' . $e->getMessage();
        }
        // return Response::json([
        //         'message' => 'Data Updated Succesfully',
        //         'a'=>$request->pdf_ids
        // ]);
        if(isset($request->pdf_ids)) {

            try {

                // remove not in array anymore
                $media_controller = new MediaController();
                
                $media_controller->remove_pdf_by_valuationID($id, $request->pdf_ids);
                // update and insert new photo_ids
                
                foreach($request->pdf_ids as $pdf_id) {
                    $media_controller->update_source_id($pdf_id, $id);
                }
                return Response::json([$id, $request->pdf_ids]);
            }
            catch(\Exception $e){
                return 'Error on updating image source ' . $e->getMessage();
            }
        }




        // return Response::json([
        //         'message' => 'Data Updated Succesfully'
        // ]);
    }

    public function destroy($id)
    {
        Valuation::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }

    private function transformCollection($valuations){
        $valuationsArray = $valuations->toArray();
        return [
            'per_page' => intval($valuationsArray['per_page']),
            'current_page' => $valuationsArray['current_page'],
            'last_page' => $valuationsArray['last_page'],
            'next_page_url' => $valuationsArray['next_page_url'],
            'prev_page_url' => $valuationsArray['prev_page_url'],
            'from' => $valuationsArray['from'],
            'to' =>$valuationsArray['to'],
            'data' => array_map([$this, 'transform'], $valuationsArray['data'])
        ];
    }

    private function transform($valuation){
        return [
                'id' => $valuation['id'],
                'date' => $valuation['date'],
                'description'=>$valuation['description'],
                'property_value'=>$valuation['property_value'],
                'land_component'=>$valuation['land_component'],
                'insurance_value'=>$valuation['insurance_value'],
                'forced_sale_value'=>$valuation['forced_sale_value'],
                'improvement_component'=>$valuation['improvement_component'],
                'area'=>$valuation['area'],
                'land_value_rate'=>$valuation['land_value_rate'],
                'property_id'=>$valuation['property']['code'],
                'pdfs_count'=>$valuation['pdfs_count'],
                'pdf_file_path' =>$valuation['file_path'],
                'pdf_file_name' =>$valuation['file_name']
        ];
    }
}
