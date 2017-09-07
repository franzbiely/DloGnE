<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\PropertySuburb;
use App\PropertyCity;
use Response;
use Input;
class PropertySuburbsController extends Controller
{

    public function __construct(){
        //$this->middleware('auth.basic', ['only' => 'store']);
        // $this->middleware('auth.basic');
        // $this->middleware('jwt.auth', ['except' => ['authenticate', 'index', 'show']]);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {        
        // 1.All is bad
        // 2. No way to attach meta data
        // 3. Linking db structure 
        // 4. No Way to signal header/response codes
        

        // $query = Input::get('search');
        $search_term = $request->input('search');
        // $limit = $request->input('limit')?$request->input('limit'):5;
        $limit = $request->input('limit', 100);


        //dd($query);
        if ($search_term)
        {
            $suburbs = PropertySuburb::orderBy('id', 'DESC')->where('name', 'LIKE', "%$search_term%")->with(
            array('City'=>function($query){
                $query->select('id','name');
            })
            )->select('id', 'name', 'city_id')->paginate($limit); 

            $suburbs->appends(array(
                'search' => $search_term,
                'limit' => $limit
            ));
            //$posts = PropertySuburb::where('name', 'LIKE', "%$query%")->paginate(5);
        }
        else
        {
            $suburbs = PropertySuburb::orderBy('id', 'DESC')->with(
            array('City'=>function($query){
                $query->select('id','name');
            })
            )->select('id', 'name', 'city_id')->paginate($limit); 

            $suburbs->appends(array(            
                'limit' => $limit
            ));   
            //$posts = PropertySuburb::orderBy('id', 'DESC')->paginate(5);
        }


        // $suburbs = PropertySuburb::with(
        //     array('City'=>function($query){
        //         $query->select('id','name');
        //     })
        //     )->select('id', 'name', 'city_id')->paginate(5); 
        //return $suburbs;
        
        // dd(get_class_methods($suburbs));

        //$suburbs = PropertySuburb::all();
        // return Response::json([
        //     'data' => $this->transformCollection($suburbs)
        // ], 200);
        return Response::json($this->transformCollection($suburbs), 200);
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
        $suburb = PropertySuburb::create($request->all());

        return Response::json([
                'message' => 'Suburb Created Succesfully',
                'data' => $this->transform($suburb)
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

         // get previous Suburb id
        $previous = PropertySuburb::where('id', '<', $suburb->id)->max('id');

        // get next Suburb id
        $next = PropertySuburb::where('id', '>', $suburb->id)->min('id');

        

        return Response::json([
            'previous_Suburb_id'=> $previous,
            'next_Suburb_id'=> $next,
            'data' => $this->transform($suburb)
            // 'data' => $suburb
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
        
        $suburb = PropertySuburb::find($id);
        $suburb->name = $request->name;
        $suburb->city_id = $request->city_id;
        $suburb->save(); 

        return Response::json([
                'message' => 'Suburb Updated Succesfully'
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
        PropertySuburb::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }

    // private function transformCollection($suburbs){
    //     return array_map([$this, 'transform'], $suburbs->toArray());
    // }

    private function transformCollection($suburbs){
        $suburbsArray = $suburbs->toArray();
        return [
            'total' => $suburbsArray['total'],
            'per_page' => intval($suburbsArray['per_page']),
            'current_page' => $suburbsArray['current_page'],
            'last_page' => $suburbsArray['last_page'],
            'next_page_url' => $suburbsArray['next_page_url'],
            'prev_page_url' => $suburbsArray['prev_page_url'],
            'from' => $suburbsArray['from'],
            'to' =>$suburbsArray['to'],
            'data' => array_map([$this, 'transform'], $suburbsArray['data'])
        ];
    }

    private function transform($suburb){
        return [
                'id' => $suburb['id'],
                'suburb' => $suburb['name'],
                'city' => $suburb['city']['name'],
                'city_id' => $suburb['city_id']
        ];
    }
}
