<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;
use App\PropertyUse;

class PropertyUsesController extends Controller
{
    public function __construct(){
        // $this->middleware('jwt.auth');
    }
    
    public function index()
    {
        $property_use = PropertyUse::all();
        return Response::json([
            'data' => $this->transformCollection($property_use)
        ], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(! $request->name ){
            return Response::json([
                'error' => [
                    'message' => 'Please Provide name'
                ]
            ], 422);
        }
        $property_use = PropertyUse::create($request->all());
 
        return Response::json([
                'message' => 'Property-Use Created Succesfully',
                'data' => $this->transform($property_use)
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
        $property_use = PropertyUse::find($id);
 
        if(!$property_use){
            return Response::json([
                'error' => [
                    'message' => 'Property-Use does not exist'
                ]
            ], 404);
        }
 
        return Response::json([
                'data' => $this->transform($property_use)
        ], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if(! $request->name ){
            return Response::json([
                'error' => [
                    'message' => 'Please Provide name'
                ]
            ], 422);
        }
        
        $property_use = PropertyUse::find($id);
        $property_use->name = $request->name;
        $property_use->save(); 
 
        return Response::json([
                'message' => 'Property-Use Updated Succesfully'
        ]);
    }
    private function transformCollection($property_use){
        return array_map([$this, 'transform'], $property_use->toArray());
    }
     
    private function transform($property_use){
        return [
               'id' => $property_use['id'],
               'name' => $property_use['name']
            ];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        PropertyUse::destroy($id);
        return Response::json([
                'message' => 'Property-Use '. $id .' Deleted Succesfully'
        ]);
    }
}
