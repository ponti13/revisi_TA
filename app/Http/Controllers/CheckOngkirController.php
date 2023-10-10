<?php

namespace App\Http\Controllers;

use App\Province;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class CheckOngkirController extends Controller
{
    public function province(Request $request)
    {
        try {
            $provinces = Province::where('name', 'like', '%' . $request->keyword . '%')->select('id', 'name')->get();
            $data = [];
            foreach ($provinces as $province) {
                $data[] = [
                    'id' => $province->id,
                    'text' => $province->name
                ];
            }

            return response()->json($data);
        } catch (\Throwable $th) {
            return response()->json([
                'success' => false,
                'message' => 'Data Fetch Failed',
                'data' => []
            ]);
        }
    }

    public function city(Request $request)
    {
        try {
            $cities = Province::find($request->province_id)->cities()
                ->where('name', 'like', '%' . $request->keyword . '%')
                ->select('id', 'name')->get();

            $data = [];
            foreach ($cities as $city) {
                $data[] = [
                    'id' => $city->id,
                    'text' => $city->name
                ];
            }

            return response()->json($data);
        } catch (\Throwable $th) {
            return response()->json([
                'success' => false,
                'message' => 'Data Fetch Failed',
                'data' => []
            ]);
        }
    }

    public function checkOngkir(Request $request)
    {
        // dd($request);
        try {
            $response = Http::withOptions(['verify' => false,])->withHeaders([
                'key' => env('RAJAONGKIR_API_KEY')
            ])->post('https://api.rajaongkir.com/starter/cost', [
                        'origin' => 171,
                        'destination' => $request->destination,
                        'weight' => $request->weight,
                        'courier' => $request->courier
                    ])
                ->json()['rajaongkir']['results'][0]['costs'];

            return response()->json($response);
        } catch (\Throwable $th) {
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
                'data' => []
            ]);
        }
    }
    public function index(Request $request)
    {
        // dd($response);
        return view('pages.cek-ongkir');
    }
}