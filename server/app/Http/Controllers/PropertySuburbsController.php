<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;
use App\PropertySuburb;
use App\PropertyCity;

class PropertySuburbsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = PropertySuburb::all();
        return Response::json([
            'data' => $this->transformCollection($data)
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
        if(! $request->city ){
            return Response::json([
                'error' => [
                    'message' => 'Please provide city'
                ]
            ], 422);
        }
        $data = PropertySuburb::create($request->all());
 
        return Response::json([
                'message' => 'Data Created Succesfully',
                'data' => $this->transform($data)
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

        $suburb = PropertySuburb::with(
            array('City'=>function($query){
                $query->select('id','name');
            })
            )->find($id);

        if(!$suburb){
            return Response::json([
                'error' => [
                    'message' => 'Suburb does not exist'
                ]
            ], 404);
        }

        $suburb = PropertySuburb::find($id);
 
        if(!$data){
            return Response::json([
                'error' => [
                    'message' => 'Data does not exist'
                ]
            ], 404);
        }
 
        return Response::json([
                'data' => $this->transform($data)
        ], 200);

        $previous = PropertySuburb::where('id', '<', $data->id)->max('id');
        $next = PropertySuburb::where('id', '>', $data->id)->min('id');

        return Response::json([
            'previous_propertysuburb_id'=> $previous,
            'next_propertysuburb_id'=> $next,
            'data' => $this->transform($data)
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
                    'message' => 'Please provide name'
                ]
            ], 422);
        }
        if(! $request->city_id ){
            return Response::json([
                'error' => [
                    'message' => 'Please provide City'
                ]
            ], 422);
        }
        
        $data = PropertySuburb::find($id);
        $data->name = $request->name;
        $data->city_id = $request->city_id;
        $data->save(); 
 
        return Response::json([
                'message' => 'Data Updated Succesfully'
        ]);
    }

    private function transformCollection($data){
        return array_map([$this, 'transform'], $data->toArray());
    }
     
    private function transform($data){
        return [
               'id' => $data['id'],
               'name' => $data['name']
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
        PropertySuburb::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }
}
