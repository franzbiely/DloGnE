<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Sale;
use App\Property;

use App\Http\Controllers\MediaController;
use Response;
use Input;

class SalesController extends Controller
{
    public function __construct(){
        $this->middleware('jwt.auth');
    }
    
    public function index(Request $request) {        
        $search_term = $request->input('search');
        $limit = $request->input('limit', 10);

        if ($search_term) {
            $sales = Sale::orderBy('id', 'DESC')->with(
                array(
                    'Property'=>function($query){
                        $query->select('id','name');
                    }
                )
            )->select('id', 
                'date',
                'source',
                'price',
                'purchaser',
                'vendor',
                'est_land_value',
                'est_improvement_value',
                'area',
                'est_land_rate',
                'description',
                'property_id',
                'remarks'
            )->paginate($limit); 

            $sales->appends(array(
                'search' => $search_term,
                'limit' => $limit
            ));
        }
        else
        {
            $sales = Sale::orderBy('id', 'DESC')->with(
                array(
                    'Property'=>function($query){
                        $query->select('id','name');
                    }
                )
            )->select('id', 
                'date',
                'source',
                'price',
                'purchaser',
                'vendor',
                'est_land_value',
                'est_improvement_value',
                'area',
                'est_land_rate',
                'description',
                'property_id',
                'remarks'
            )->paginate($limit); 

            $sales->appends(array(            
                'limit' => $limit
            ));
        }
        return Response::json($this->transformCollection($sales), 200);
    }

    public function getByProperty(Request $request, $property_id) {
        $search_term = $request->input('search');
        $limit = $request->input('limit', 10);
        $sales = Sale::where('property_id',$property_id)->orderBy('id', 'DESC')->with(
            array(
                'Property'=>function($query){
                    $query->select('id','name');
                }
            )
        )->select('id', 
            'date',
            'source',
            'price',
            'purchaser',
            'vendor',
            'est_land_value',
            'est_improvement_value',
            'area',
            'est_land_rate',
            'description',
            'property_id',
            'remarks'
        )->paginate($limit); 
        $sales->appends(array(            
            'limit' => $limit
        ));
        return Response::json($this->transformCollection($sales), 200);
    }

    public function store(Request $request) {
        $media_controller = new MediaController();
        try {
            $sale = Sale::create($request->all());
        }
        catch(\Exception $e){
            return 'Error on inserting sales details ' . $e->getMessage();
        }
        if(isset($request->pdf_ids)) {
            try {
                foreach($request->pdf_ids as $pdf_id) {
                    $media_controller->update_source_id($pdf_id, $sale->id);
                }
            }
            catch(\Exception $e){
                return 'Error on updating image source ' . $e->getMessage();
            }
        }
        

        return Response::json([
                'message' => 'Data created succesfully',
                'data' => $this->transform($sale)
        ]);
    }

    public function show($id)
    {
        $sale = Sale::with(
            array('Property'=>function($query){
                $query->select('id','name');
            })
            )->find($id);
        if(!$sale){
            return Response::json([
                'error' => [
                    'message' => 'Data does not exist'
                ]
            ], 404);
        }

         // get previous Property id
        $previous = Sale::where('id', '<', $sale->id)->max('id');

        // get next Property id
        $next = Sale::where('id', '>', $sale->id)->min('id');

        

        return Response::json([
            'previous_Sale_id'=> $previous,
            'next_Sale_id'=> $next,
            'data' => $this->transform($sale)
        ], 200);
    }

    public function update(Request $request, $id)
    {    
        try {
            $sale = Sale::find($id);
            if(isset($request->date)) $sale->date = $request->date;
            if(isset($request->source)) $sale->source = $request->source;
            if(isset($request->price)) $sale->price = $request->price;
            if(isset($request->purchaser)) $sale->purchaser = $request->purchaser;
            if(isset($request->vendor)) $sale->vendor = $request->vendor;
            if(isset($request->est_land_value)) $sale->est_land_value = $request->est_land_value;
            if(isset($request->est_improvement_value)) $sale->est_improvement_value = $request->est_improvement_value;
            if(isset($request->est_land_rate)) $sale->est_land_rate = $request->est_land_rate;
            if(isset($request->description)) $sale->description = $request->description;
            if(isset($request->property_id)) $sale->property_id = $request->property_id;
            if(isset($request->remarks)) $sale->remarks = $request->remarks;
            $sale->save(); 
        }
        catch(\Exception $e){
            return 'Error on updating sales details  ' . $e->getMessage();
        }
        if(isset($request->pdf_ids)) {
            try {
                // remove not in array anymore
                $media_controller = new MediaController();

                $media_controller->remove_pdf_by_salesID($id, $request->pdf_ids);
                // update and insert new photo_ids
                
                foreach($request->pdf_ids as $pdf_id) {
                    $media_controller->update_source_id($pdf_id, $id);
                }
            }
            catch(\Exception $e){
                return 'Error on updating image source ' . $e->getMessage();
            }
        }

        return Response::json([
                'message' => 'Data Updated Succesfully'
        ]);
    }

    public function destroy($id)
    {
        Sale::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }

    private function transformCollection($sales){
        $salesArray = $sales->toArray();
        $total = $salesArray['total'];
        return [
            'total' => $salesArray['total'],
            'per_page' => intval($salesArray['per_page']),
            'current_page' => $salesArray['current_page'],
            'last_page' => $salesArray['last_page'],
            'next_page_url' => $salesArray['next_page_url'],
            'prev_page_url' => $salesArray['prev_page_url'],
            'from' => $salesArray['from'],
            'to' =>$total,
            'total' => $total,
            'data' => array_map([$this, 'transform'], $salesArray['data'])
        ];
    }

    private function transform($sale){
        return [
                'id' => $sale['id'],
                'date' => $sale['date'],
                'source'=>$sale['source'],
                'price' => $sale['price'],
                'purchaser'=>$sale['purchaser'],
                'vendor'=>$sale['vendor'],
                'est_land_value'=>$sale['est_land_value'],
                'est_improvement_value'=>$sale['est_improvement_value'],
                'area'=>$sale['area'],
                'est_land_rate'=>$sale['est_land_rate'],
                'description'=>$sale['description'],
                'property_id'=>$sale['property_id'],
                'property'=>$sale['property']['name'],
                'remarks'=>$sale['remarks'],
        ];
    }
}
