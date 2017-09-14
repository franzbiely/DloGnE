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
        }
        return Response::json($this->transformCollection($properties), 200);
    }

    public function store(Request $request) {

        if(! $request->property_use_id or
           ! $request->property_class_id or
           ! $request->property_lease_type_id or
           ! $request->property_city_id or
           ! $request->property_suburb_id or
           ! $request->port or
           ! $request->sec or
           ! $request->lot or
           ! $request->unit or
           ! $request->land_value ){
            return Response::json([
                'error' => [
                    'message' => 'Some mandatory fields are not filled up'
                ]
            ], 422);
        }
        $property = Property::create($request->all());

        return Response::json([
                'message' => 'Property Created Succesfully',
                'data' => $this->transform($property)
        ]);
    }

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
        ], 200);
    }

    public function update(Request $request, $id)
    {    
        $property = Property::find($id);
        if(isset($request->code)) $property->code = $request->code;
        if(isset($request->description)) $property->description = $request->description;
        if(isset($request->property_use_id)) $property->property_use_id = $request->property_use_id;
        if(isset($request->property_class_id)) $property->property_class_id = $request->property_class_id;
        if(isset($request->property_lease_type_id)) $property->property_lease_type_id = $request->property_lease_type_id;
        if(isset($request->property_city_id)) $property->property_city_id = $request->property_city_id;
        if(isset($request->property_suburb_id)) $property->property_suburb_id = $request->property_suburb_id;
        if(isset($request->port)) $property->port = $request->port;
        if(isset($request->sec)) $property->sec = $request->sec;
        if(isset($request->lot)) $property->lot = $request->lot;
        if(isset($request->unit)) $property->unit = $request->unit;
        if(isset($request->land_value)) $property->land_value = $request->land_value;
        if(isset($request->land_component)) $property->land_component = $request->land_component;
        if(isset($request->improvement_component)) $property->improvement_component = $request->improvement_component;
        if(isset($request->area)) $property->area = $request->area;
        
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
