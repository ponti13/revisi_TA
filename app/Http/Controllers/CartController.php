<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
// use Kavist\RajaOngkir\Facades\RajaOngkir;

class CartController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $tujuan = Auth::user()->regencies_id;
        // dd($tujuan);
        // $responseData = RajaOngkir::biaya([
        //     'origin' => 171,
        //     'destination' => $tujuan,
        //     'weight' => 1300,
        //     'courier' => 'jne'
        // ]);

        // $ongkosData = $responseData->getResult();


        // dd($ongkosData[0]['costs'][1]['cost'][0]['value']);


        // dd($daftarProvinsi);
        // $profile =Auth::user()->id->get();
        $categories = Category::take(6)->get();
        // cara ambil ongkir , diambil dari alamat user diprofile pada users table
        // get Provinsi dan kota , cek ongkir dari alamat pengirim ke provinsi dan kota pembeli yang di dapat dari table user

        // raja ongkir cek harga ongkir

        // code
        $ongkir = $request->query('ongkir');
        // setelah dapat kemudian tambahkan ke total harga ( harga cart + ongkir )
        $carts = Cart::with(['product.galleries', 'user'])->where('users_id', Auth::user()->id)->get();

        // $ total_harga = harga pada cart + ongkir

        return view('pages.cart', [
            'carts' => $carts,
            'categories' => $categories,
            // 'ongkir' => $value
            'ongkir' => $ongkir
            //'total_harga' => $total_harga
        ]);
    }

    public function delete(Request $request, $id)
    {
        $cart = Cart::findOrFail($id);

        $cart->delete();

        return redirect()->route('cart');
    }

    public function success()
    {
        return view('pages.success');
    }
}
