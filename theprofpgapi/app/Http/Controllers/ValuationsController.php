<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Valuation;
use App\Property;


use Response;
use Input;

class ValuationsController extends Controller
{
    public function __construct(){}
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
                'year',
                'value',
                'remarks',
                'property_id'
            )->paginate($limit); 

            $valuations->appends(array(            
                'limit' => $limit
            ));   
        }
        return Response::json($this->transformCollection($valuations), 200);
    }

    public function store(Request $request) {
        $valuation = Valuation::create($request->all());

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

         // get previous Property id
        $previous = Valuation::where('id', '<', $valuation->id)->max('id');

        // get next Property id
        $next = Valuation::where('id', '>', $valuation->id)->min('id');

        

        return Response::json([
            'previous_Property_id'=> $previous,
            'next_Property_id'=> $next,
            'data' => $this->transform($valuation)
        ], 200);
    }

    public function update(Request $request, $id)
    {    
        $valuation = Valuation::find($id);
        if(isset($request->year)) $valuation->year = $request->year;
        if(isset($request->value)) $valuation->value = $request->value;
        if(isset($request->remarks)) $valuation->remarks = $request->remarks;
        if(isset($request->property_id)) $valuation->property_id = $request->property_id;
        
        $valuation->save(); 

        return Response::json([
                'message' => 'Data Updated Succesfully'
        ]);
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
            'total' => $valuationsArray['total'],
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
                'year' => $valuation['year'],
                'value' => $valuation['value'],
                'remarks'=>$valuation['remarks'],
                'property_id'=>$valuation['property']['code']
        ];
    }
}
