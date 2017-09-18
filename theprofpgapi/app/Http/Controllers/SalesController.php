<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Sale;
use App\Property;

use Response;
use Input;

class SalesController extends Controller
{
    public function __construct(){}
    public function index(Request $request) {        
        $search_term = $request->input('search');
        $limit = $request->input('limit', 100);

        if ($search_term) {
            // $sales = Sale::orderBy('id', 'DESC')->
            //     where('code', 'LIKE', "%$search_term%")->
            //     with(
            //         array('City'=>function($query){
            //             $query->select('id','name');
            //         })
            //     )->select('id', 'code', 'city_id')->paginate($limit); 

            // $sales->appends(array(
            //     'search' => $search_term,
            //     'limit' => $limit
            // ));
        }
        else
        {
            $sales = Sale::orderBy('id', 'DESC')->with(
                array(
                    'Property'=>function($query){
                        $query->select('id','code');
                    }
                )
            )->select('id', 
                'date',
                'value',
                'buyer',
                'remarks',
                'property_id'
            )->paginate($limit); 

            $sales->appends(array(            
                'limit' => $limit
            ));   
        }
        return Response::json($this->transformCollection($sales), 200);
    }

    public function getByProperty(Request $request, $property_id) {
        $search_term = $request->input('search');
        $limit = $request->input('limit', 100);
        $sales = Sale::where('property_id',$property_id)->orderBy('id', 'DESC')->with(
            array(
                'Property'=>function($query){
                    $query->select('id','code');
                }
            )
        )->select('id', 
            'date',
            'value',
            'buyer',
            'remarks',
            'property_id'
        )->paginate($limit); 
        $sales->appends(array(            
            'limit' => $limit
        ));
        return Response::json($this->transformCollection($sales), 200);
    }

    public function store(Request $request) {
        $sale = Sale::create($request->all());

        return Response::json([
                'message' => 'Data created succesfully',
                'data' => $this->transform($sale)
        ]);
    }

    public function show($id)
    {
        $sale = Sale::with(
            array('Property'=>function($query){
                $query->select('id','code');
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
        $sale = Sale::find($id);
        if(isset($request->date)) $sale->date = $request->date;
        if(isset($request->value)) $sale->value = $request->value;
        if(isset($request->buyer)) $sale->buyer = $request->buyer;
        if(isset($request->remarks)) $sale->remarks = $request->remarks;
        if(isset($request->property_id)) $sale->property_id = $request->property_id;
        
        $sale->save(); 

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
        return [
            'total' => $salesArray['total'],
            'per_page' => intval($salesArray['per_page']),
            'current_page' => $salesArray['current_page'],
            'last_page' => $salesArray['last_page'],
            'next_page_url' => $salesArray['next_page_url'],
            'prev_page_url' => $salesArray['prev_page_url'],
            'from' => $salesArray['from'],
            'to' =>$salesArray['to'],
            'data' => array_map([$this, 'transform'], $salesArray['data'])
        ];
    }

    private function transform($sale){
        return [
                'id' => $sale['id'],
                'date' => $sale['date'],
                'value' => $sale['value'],
                'buyer'=>$sale['buyer'],
                'remarks'=>$sale['remarks'],
                'property_id'=>$sale['property']['code']
        ];
    }
}
