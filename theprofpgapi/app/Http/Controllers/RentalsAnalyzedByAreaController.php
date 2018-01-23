<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;
use App\RentalAnalyzedByArea;

class RentalsAnalyzedByAreaController extends Controller
{

    // public function __construct(){
    //     $this->middleware('jwt.auth');
    // }
    
    private function transformCollection($data){
        return array_map([$this, 'transform'], $data->toArray());
    }
    private function transform($data){
        return [
               'id' => $data['id'],
               'title' => $data['title']
            ];
    }
    public function index() {
        $data = RentalAnalyzedByArea::orderBy('title')->get();
        return Response::json([
            'data' => $this->transformCollection($data)
        ], 200);
    }
    public function show($id) {
        $data = RentalAnalyzedByArea::find($id);
 
        if(!$data){
            return Response::json([
                'error' => [
                    'message' => 'Rental Analyzed By Area does not exist'
                ]
            ], 404);
        }
 
        return Response::json([
                'data' => $this->transform($data)
        ], 200);
    }

    // ============== [ Insert ] ================================
    public function store(Request $request) {
        if(! $request->title ){
            return Response::json([
                'error' => [
                    'message' => 'Please provide title'
                ]
            ], 422);
        }

        $data = RentalAnalyzedByArea::create($request->all());

        // AuditTrail::create();

        return Response::json([
                'message' => '"Rental Analyzed By Area" Created Succesfully',
                'data' => $this->transform($data)
        ]);
    }
    // ============== [ / Insert ] ================================




    // ============== [ Update ] ================================
    public function update(Request $request, $id) {
        if(! $request->title ){
            return Response::json([
                'error' => [
                    'message' => 'Please provide title'
                ]
            ], 422);
        }
        
        $data = RentalAnalyzedByArea::find($id);
        $data->title = $request->title;
        $data->save(); 
 
        return Response::json([
                'message' => 'Rental Analyzed By Area '. $id .' Updated Succesfully'
        ]);
    }
    // ============== [ / Update ] ================================

    public function destroy($id) {
        RentalAnalyzedByArea::destroy($id);
        return Response::json([
            'message' => 'Rental Analyzed By Area '. $id .' Deleted Succesfully'
        ]);
    }

}
