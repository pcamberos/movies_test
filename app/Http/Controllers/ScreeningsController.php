<?php

namespace App\Http\Controllers;

use App\Screenings;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ScreeningsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    { 
       
        return Screenings::with('categories:categories.id,name')->get();
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
        $screening = Screenings::create($request->all());
        return $screening;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Screenings  $screenings
     * @return \Illuminate\Http\Response
     */
    public function show(Screenings $screenings)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Screenings  $screenings
     * @return \Illuminate\Http\Response
     */
    public function edit(Screenings $screenings)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Screenings  $screenings
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Screenings $screenings)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Screenings  $screenings
     * @return \Illuminate\Http\Response
     */
    public function destroy(Screenings $screenings)
    {
        //
    }

    public function top_screenings(Request $request){
        return Screenings::orderByDesc('rating')->take(3)->with('categories:categories.id,name')->get();

    }

    public function comedy_action(Request $request){
        
        $screenings = Screenings::with('categories:categories.id,name')
        ->join('categories_screenings', 'screening_id', '=', 'screenings.id')
        ->whereRaw('category_id IN (1,2)')
        ->groupBy('screenings.id')
        ->get(['screenings.id', 'movie', 'screenings.created_at', 'screenings.updated_at',
            'screenings.room','screenings.time', 'screenings.language', 'screenings.country',
            'screenings.rating']);
        return ($screenings);
    }

    public function movie_by_date(Request $request){
        $fecha = $request->fecha;
        
        $screenings = Screenings::with('categories:categories.id,name')
        ->join('categories_screenings', 'screening_id', '=', 'screenings.id')
        ->whereRaw('DATE(time) = ' . $fecha)
        ->groupBy('screenings.id')
        ->get(['screenings.id', 'movie', 'screenings.created_at', 'screenings.updated_at',
            'screenings.room','screenings.time', 'screenings.language', 'screenings.country',
            'screenings.rating']);
        return ($screenings);
    }

    public function comedy_action_date(Request $request){
        
        $fecha = $request->fecha;
        
        $screenings = Screenings::with('categories:categories.id,name')
        ->join('categories_screenings', 'screening_id', '=', 'screenings.id')
        ->whereRaw('category_id IN (1,2) AND DATE(time) = ' . $fecha)
        ->groupBy('screenings.id')
        ->get(['screenings.id', 'movie', 'screenings.created_at', 'screenings.updated_at',
            'screenings.room','screenings.time', 'screenings.language', 'screenings.country',
            'screenings.rating']);
        return ($screenings);
    }
    
}
