<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;
use App\PropertyCity;

class PropertyCitiesController extends Controller
{
    public function __construct() {
        // $this->middleware('jwt.auth');
    }
    
    public function index()
    {
        $data = PropertyCity::all();
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
        $data = PropertyCity::create($request->all());
 
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
        $data = PropertyCity::find($id);
 
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
        
        $data = PropertyCity::find($id);
        $data->name = $request->name;
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
        PropertyCity::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }
}
