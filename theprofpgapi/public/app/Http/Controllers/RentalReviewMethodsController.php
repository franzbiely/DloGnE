<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;
use App\RentalReviewMethod;

class RentalReviewMethodsController extends Controller
{
    // public function __construct(){
    //     $this->middleware('jwt.auth');
    // }
    private $title = "Rental Review Method";
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
        $data = RentalReviewMethod::orderBy('title')->get();
        return Response::json([
            'data' => $this->transformCollection($data)
        ], 200);
    }
    public function show($id) {
        $data = RentalReviewMethod::find($id);
 
        if(!$data){
            return Response::json([
                'error' => [
                    'message' => $this->title . ' does not exist'
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
        $data = RentalReviewMethod::create($request->all());
        return Response::json([
                'message' => $this->title . ' Created Succesfully',
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
        
        $data = RentalReviewMethod::find($id);
        $data->title = $request->title;
        $data->save(); 
 
        return Response::json([
                'message' => $this->title . ' '. $id .' Updated Succesfully'
        ]);
    }

    // ============== [ / Update ] ================================

    // ============== [ Delete ] ================================

    public function destroy($id) {
        RentalReviewMethod::destroy($id);
        return Response::json([
            'message' => $this->title . ' '. $id .' Deleted Succesfully'
        ]);
    }

    // ============== [ / Delete ] ================================
}
