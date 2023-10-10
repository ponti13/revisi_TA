<?php

namespace App\Http\Controllers;

use App\Transaction;
use App\TransactionDetail;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardTransactionController extends Controller
{
    public function index()
    {
        $customer = User::count();
        $revenue = Transaction::sum('total_price');
        $transaction = Transaction::count();
        $sellTransactions = TransactionDetail::with(['transaction.user','product.galleries'])
                            ->whereHas('product', function($product){
                                $product->where('users_id', Auth::user()->id);
                            })->get();
        $buyTransactions = TransactionDetail::with(['transaction.user','product.galleries'])
                            ->whereHas('transaction', function($transaction){
                                $transaction->where('users_id', Auth::user()->id);
                            })->get();

if(Auth::user()->roles == 'ADMIN'){
    return view('pages.dashboard',[
        'sellTransactions' => $sellTransactions,
        'buyTransactions' => $buyTransactions,
        'customer' => $customer,
        'revenue' => $revenue,
        'transaction' => $transaction
    ]);

}
return view('pages.dashboard-transactions',[
    'sellTransactions' => $sellTransactions,
    'buyTransactions' => $buyTransactions,
    'customer' => $customer,
    'revenue' => $revenue,
    'transaction' => $transaction
]);
    }

    public function details(Request $request, $id)
    {
        $transaction = TransactionDetail::with(['transaction.user','product.galleries'])
                            ->findOrFail($id);
        return view('pages.dashboard-transactions-details',[
            'transaction' => $transaction
        ]);
    }

    public function update(Request $request, $id)
    {
        $data = $request->all();

        $item = TransactionDetail::findOrFail($id);

        $item->update($data);

        return redirect()->route('dashboard-transaction-details', $id);
    }

    public function tx()
    {
        $customer = User::count();
        $revenue = Transaction::sum('total_price');
        $transaction = Transaction::count();
        $sellTransactions = TransactionDetail::with(['transaction.user','product.galleries'])
                            ->whereHas('product', function($product){
                                $product->where('users_id', Auth::user()->id);
                            })->get();
        $buyTransactions = TransactionDetail::with(['transaction.user','product.galleries'])
                            ->whereHas('transaction', function($transaction){
                                $transaction->where('users_id', Auth::user()->id);
                            })->get();

if(Auth::user()->roles == 'ADMIN'){
    return view('pages.dashboard-transactions',[
        'sellTransactions' => $sellTransactions,
        'buyTransactions' => $buyTransactions,
        'customer' => $customer,
        'revenue' => $revenue,
        'transaction' => $transaction
    ]);

}
return view('pages.dashboard-transactions',[
    'sellTransactions' => $sellTransactions,
    'buyTransactions' => $buyTransactions,
    'customer' => $customer,
    'revenue' => $revenue,
    'transaction' => $transaction
]);
    }

}
