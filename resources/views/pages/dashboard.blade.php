@extends('layouts.dashboard')

@section('title')
    Dashboard Toko
@endsection

@section('content')
<!-- Section Content -->
<div
class="section-content section-dashboard-home"
data-aos="fade-up"
>
<div class="container-fluid">
    <div class="dashboard-heading">
    <h2 class="dashboard-title">Dashboards</h2>
    <p class="dashboard-subtitle">
        Lihat apa yang telah Anda buat hari ini!
    </p>
    </div>
    <div class="dashboard-content">
    <div class="row">
        <div class="col-md-4">
        <div class="card mb-2">
            <div class="card-body">
            <div class="dashboard-card-title">
                Pelanggan
            </div>
            <div class="dashboard-card-subtitle">
                {{ number_format($customer) }}
            </div>
            </div>
        </div>
        </div>
        <div class="col-md-4">
        <div class="card mb-2">
            <div class="card-body">
            <div class="dashboard-card-title">
                Pendapatan
            </div>
            <div class="dashboard-card-subtitle">
                Rp. {{ number_format($revenue) }}
            </div>
            </div>
        </div>
        </div>
        <div class="col-md-4">
        <div class="card mb-2">
            <div class="card-body">
            <div class="dashboard-card-title">
                Transaksi
            </div>
            <div class="dashboard-card-subtitle">
                {{ number_format($transaction) }}
            </div>
            </div>
        </div>
        </div>
    </div>
    </div>
</div>
</div>
@endsection
