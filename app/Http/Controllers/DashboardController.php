<?php

namespace App\Http\Controllers;

use App\TransactionDetail;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        $transactions = TransactionDetail::with(['transaction.user','product.galleries'])
                            ->whereHas('product', function($product){
                                $product->where('users_id', Auth::user()->id);
                            });

        $revenue = $transactions->get()->reduce(function ($carry, $item) {
            return $carry + $item->price;
        });

        // $customer = User::count();
        $customer = User::where('roles', 'USER')->count();
        // dd(Auth::user()->roles === 'ADMIN');

        $cek_adm = Auth::user()->roles === 'ADMIN';

        return view('pages.dashboard',[
            'transaction_count' => $transactions->count(),
            'transaction_data' => $transactions->get(),
            'revenue' => $revenue,
            'customer' => $customer,
            'cek' => $cek_adm,

        ]);
    }
}
