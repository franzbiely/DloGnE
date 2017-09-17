<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\User;

use Response;
use Input;

class UsersController extends Controller
{
    public function __construct(){}
    public function index(Request $request) {        
        $data = User::all();
        return Response::json([
            'data' => $this->transformCollection($data)
        ], 200);
    }

    public function store(Request $request) {
        $user = User::create($request->all());

        return Response::json([
                'message' => 'Data created succesfully',
                'data' => $this->transform($user)
        ]);
    }

    public function show($id)
    {
        $data = User::find($id);
 
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

    public function update(Request $request, $id)
    {    
        $user = User::find($id);
        if(isset($request->name)) $user->name = $request->name;
        if(isset($request->email)) $user->email = $request->email;
        if(isset($request->username)) $user->username = $request->username;
        if(isset($request->role)) $user->role = $request->role;
        
        $user->save(); 

        return Response::json([
                'message' => 'Data Updated Succesfully'
        ]);
    }

    public function destroy($id)
    {
        User::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }

    private function transformCollection($data){
        return array_map([$this, 'transform'], $data->toArray());
    }

    private function transform($user){
        return [
                'id' => $user['id'],
                'name' => $user['name'],
                'email' => $user['email'],
                'username'=>$user['username'],
                'role'=>$user['role']
        ];
    }
}
