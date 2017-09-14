<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Property;
use App\PropertyUse;
use App\PropertyClass;
use App\PropertyLeaseType;
use App\PropertyCity;

use Response;
use Input;

class PropertiesController extends Controller
{
    public function __construct(){}
    public function index(Request $request) {        
        $search_term = $request->input('search');
        $limit = $request->input('limit', 100);

        if ($search_term) {
            $properties = Property::orderBy('id', 'DESC')->
                where('code', 'LIKE', "%$search_term%")->
                with(
                    array('City'=>function($query){
                        $query->select('id','name');
                    })
                )->select('id', 'code', 'city_id')->paginate($limit); 

            $properties->appends(array(
                'search' => $search_term,
                'limit' => $limit
            ));
        }
        else
        {
            $properties = Property::orderBy('id', 'DESC')->with(
                array(
                    'Property_City'=>function($query){
                        $query->select('id','name');
                    },
                    'Property_Suburb'=>function($query){
                        $query->select('id','name');
                    },
                    'Property_Lease_Type'=>function($query){
                        $query->select('id','name');
                    },
                    'Property_Class'=>function($query){
                        $query->select('id','name');
                    },
                    'Property_Use'=>function($query){
                        $query->select('id','name');
                    }
                )
            )->select('id', 
                'code',
                'description',
                'property_use_id',
                'property_class_id',
                'property_lease_type_id',
                'property_city_id',
                'property_suburb_id',
                'port',
                'sec',
                'lot',
                'unit',
                'land_value',
                'land_component',
                'improvement_component',
                'area'
            )->paginate($limit); 

            $properties->appends(array(            
                'limit' => $limit
            ));   
            //$posts = Property::orderBy('id', 'DESC')->paginate(5);
        }


        // $properties = Property::with(
        //     array('City'=>function($query){
        //         $query->select('id','name');
        //     })
        //     )->select('id', 'name', 'city_id')->paginate(5); 
        //return $properties;
        
        // dd(get_class_methods($properties));

        //$properties = Property::all();
        // return Response::json([
        //     'data' => $this->transformCollection($properties)
        // ], 200);
        return Response::json($this->transformCollection($properties), 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function create()
    // {
    //     //
    // }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if(! $request->name or ! $request->city_id){
            return Response::json([
                'error' => [
                    'message' => 'Please Provide Both name and city_id'
                ]
            ], 422);
        }
        $property = Property::create($request->all());

        return Response::json([
                'message' => 'Property Created Succesfully',
                'data' => $this->transform($property)
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $property = Property::with(
            array('City'=>function($query){
                $query->select('id','name');
            })
            )->find($id);
        if(!$property){
            return Response::json([
                'error' => [
                    'message' => 'Property does not exist'
                ]
            ], 404);
        }

         // get previous Property id
        $previous = Property::where('id', '<', $property->id)->max('id');

        // get next Property id
        $next = Property::where('id', '>', $property->id)->min('id');

        

        return Response::json([
            'previous_Property_id'=> $previous,
            'next_Property_id'=> $next,
            'data' => $this->transform($property)
            // 'data' => $property
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function edit($id)
    // {
    //     //
    // }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {    
        if(! $request->name or ! $request->city_id){
            return Response::json([
                'error' => [
                    'message' => 'Please Provide Both name and city_id'
                ]
            ], 422);
        }
        
        $property = Property::find($id);
        $property->name = $request->name;
        $property->city_id = $request->city_id;
        $property->save(); 

        return Response::json([
                'message' => 'Property Updated Succesfully'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Property::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }

    // private function transformCollection($properties){
    //     return array_map([$this, 'transform'], $properties->toArray());
    // }

    private function transformCollection($properties){
        $propertiesArray = $properties->toArray();
        return [
            'total' => $propertiesArray['total'],
            'per_page' => intval($propertiesArray['per_page']),
            'current_page' => $propertiesArray['current_page'],
            'last_page' => $propertiesArray['last_page'],
            'next_page_url' => $propertiesArray['next_page_url'],
            'prev_page_url' => $propertiesArray['prev_page_url'],
            'from' => $propertiesArray['from'],
            'to' =>$propertiesArray['to'],
            'data' => array_map([$this, 'transform'], $propertiesArray['data'])
        ];
    }

    private function transform($property){
        return [
                'id' => $property['id'],
                'city' => $property['property__city']['name'],
                'suburb' => $property['property__suburb']['name'],
                'lease_type'=>$property['property__lease__type']['name'],
                'class'=>$property['property__class']['name'],
                'use'=>$property['property__use']['name'],
                'code' => $property['code'],
                'description'=> $property['description'],
                'port'=> $property['port'],
                'sec'=> $property['sec'],
                'lot'=> $property['lot'],
                'unit'=> $property['unit'],
                'land_value'=> $property['land_value'],
                'land_component'=> $property['land_component'],
                'improvement_component'=> $property['improvement_component'],
                'area'=> $property['area']

        ];
    }
}
