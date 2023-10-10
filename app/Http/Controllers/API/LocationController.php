<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Province;
use App\City;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    public function provinces(Request $request)
    {
        return Province::all();
    }

    public function regencies(Request $request, $provinces_id)
    {
        return City::where('province_id', $provinces_id)->get();
    }
}