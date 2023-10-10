@extends('layouts.app')

@section('title')
    Halaman Keranjang
@endsection

@section('content')

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <!-- Page Content -->
    <div class="page-content page-cart">
        <section class="store-breadcrumbs" data-aos="fade-down" data-aos-delay="100">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="/index.html">Beranda</a>
                                </li>
                                <li class="breadcrumb-item active">
                                    Keranjang
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <section class="store-cart">
            <div class="container">
                <div class="row" data-aos="fade-up" data-aos-delay="100">
                    <div class="col-12 table-responsive">
                        <table class="table table-borderless table-cart">
                            <thead>
                                <tr>
                                    <td>Gambar</td>
                                    <td>Nama &amp; Penjual</td>
                                    <td>Harga</td>
                                    <td>Jumlah</td>
                                    <td>Menu</td>
                                </tr>
                            </thead>
                            <tbody>
                                @php $totalPrice = 0 @endphp
                                @foreach ($carts as $cart)
                                    <tr>
                                        <td style="width: 20%;">
                                            @if ($cart->product->galleries)
                                                <img src="{{ Storage::url($cart->product->galleries->first()->photos) }}"
                                                    alt="" class="cart-image" />
                                            @endif
                                        </td>
                                        <td style="width: 20%;">
                                            <div class="product-title">{{ $cart->product->name }}</div>
                                            <div class="product-subtitle">by {{ $cart->product->user->store_name }}</div>
                                        </td>
                                        <td style="width: 15%;">
                                            <div class="product-title">Rp. {{ number_format($cart->product->price) }}</div>
                                            <div class="product-subtitle">Rupiah</div>
                                        </td>
                                        <td  style="width: 25%;">
                                            <div class="input-group" style="max-width: 150px;">
                                                <input type="number" name="amount" id="amount" class="form-control" value="1">
                                                <div class="input-group-append">
                                                    <button class="btn btn-outline-secondary" type="button" onclick="decrementAmount()">-</button>
                                                    <button class="btn btn-outline-secondary" type="button" onclick="incrementAmount()">+</button>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="width: 20%;">
                                            <form action="{{ route('cart-delete', $cart->id) }}" method="POST">
                                                @method('DELETE')
                                                @csrf
                                                <button class="btn btn-remove-cart" type="submit">
                                                    Hapus
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                    @php
                                        $allPrice = 0;
                                        $allPrice += $cart->product->price;
                                    @endphp
                                    @php
                                        $totalPrice += $cart->product->price ;
                                    @endphp
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row" data-aos="fade-up" data-aos-delay="150">
                    <div class="col-12">
                        <hr />
                    </div>
                    <div class="col-12">
                        <h2 class="mb-4">Rincian Belanja</h2>
                    </div>
                </div>
                <main class="py-3">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="fs-5 py-4 text-center">
                                    Cek Ongkos Kirim
                                </h2>
                                <div class="card border rounded shadow">
                                    <div class="card-body">
                                        <form id="form">
                                            {{-- <div class="row mb-3">
                                    <strong>Origin</strong>
                                    <div class="col-md-6">
                                        <label for="origin_province" class="form-label">Province</label>
                                        <select name="origin_province" id="origin_province" class="form-select">
                                            <option>Choose Province</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="origin_city" class="form-label">City</label>
                                        <select name="origin_city" id="origin_city" class="form-select">
                                            <option>Choose City</option>
                                        </select>
                                    </div>
                                </div> --}}
                                            <p class="bold text-center">Paket Dikirim Dari Pontianak Kalimantan Barat
                                            </p>
                                            <div class="row mb-3">
                                                <strong>Alamat Tujuan</strong>
                                                <div class="col-md-6">
                                                    <label for="destination_province" class="form-label">Province</label>
                                                    <select name="destination_province" id="destination_province"
                                                        class="form-select">
                                                        <option>Choose Province</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="destination_city" class="form-label">City</label>
                                                    <select name="destination_city" id="destination_city"
                                                        class="form-select">
                                                        <option>Choose City</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <label for="courier" class="form-label">Courier</label>
                                                    <select name="courier" id="courier" class="form-select">
                                                        <option>Choose Courier</option>
                                                        <option value="jne">JNE</option>
                                                        <option value="pos">POS</option>
                                                        <option value="tiki">TIKI</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="weight" class="form-label">Weight (Gram)</label>
                                                    <input disabled type="number" name="weight" id="weight"
                                                        value="1000" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <button class="btn btn-primary" id="checkBtn">Check</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div id="result" class="mt-3 d-none"></div>
                            </div>
                        </div>
                    </div>
                </main>
                <form action="{{ route('checkout') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @php
                    $totalPrice += $ongkir;
                @endphp
                    <input type="hidden" name="total_price" value="{{ $totalPrice }}">

                    <div class="row mb-2" data-aos="fade-up" data-aos-delay="200" id="locations">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="address_one">Alamat 1</label>
                                <input type="text" class="form-control" id="address_one" name="address_one"
                                    value="{{ Auth::user()->address_one }} " />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="address_two">Alamat 2</label>
                                <input type="text" class="form-control" id="address_two" name="address_two"
                                    value="{{ Auth::user()->address_two }}" />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="provinces_id">Provinsi</label>
                                <select name="provinces_id" id="provinces_id" class="form-control"
                                    v-model="provinces_id" v-if="provinces">
                                    <option v-for="province in provinces" :value="province.id">@{{ province.name }}
                                    </option>
                                </select>
                                <select v-else class="form-control"></select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="regencies_id">Kota</label>
                                <select name="regencies_id" id="regencies_id" class="form-control"
                                    v-model="regencies_id" v-if="regencies">
                                    <option v-for="regency in regencies" :value="regency.id">@{{ regency.name }}
                                    </option>
                                </select>
                                <select v-else class="form-control"></select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="zip_code">Kode Pos</label>
                                <input type="text" class="form-control" id="zip_code" name="zip_code"
                                    value="{{ Auth::user()->zip_code }}" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="country">Negara</label>
                                <input type="text" class="form-control" id="country" name="country"
                                    value="{{ Auth::user()->country }}" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="phone_number">No. WhatsApp</label>
                                <input type="text" class="form-control" id="phone_number" name="phone_number"
                                    value="{{ Auth::user()->phone_number }}" />
                            </div>
                        </div>


                    </div>
                    <div class="row" data-aos="fade-up" data-aos-delay="150">
                        <div class="col-12">
                            <hr />
                        </div>
                        <div class="col-12">
                            <h2 class="mb-1">Informasi Pembayaran</h2>
                            @if ($ongkir != 0)
                                <p>Harga Total : Rp.{{ number_format($totalPrice ?? 0) }} (telah termasuk ongkir)
                                </p>
                            @else
                                <p class="text-danger">Harga Total : Rp.{{ number_format($totalPrice ?? 0) }} (Harap Cek
                                    Ongkir Terlebih Dahulu)
                                </p>
                            @endif


                        </div>
                    </div>
                    <div class="row" data-aos="fade-up" data-aos-delay="200">
                        {{-- <div class="col-4 col-md-2">
                <div class="product-title">Rp.</div>
                <div class="product-subtitle">Country Tax</div>
              </div>
              <div class="col-4 col-md-3">
                <div class="product-title">Rp.</div>
                <div class="product-subtitle">Product Insurance</div>
              </div> --}}
                        {{-- <div class="col-4 col-md-2">
                <div class="product-title">Rp.</div>
                <div class="product-subtitle">Ship to Jakarta</div>
              </div> --}}

                        <div class="col-4 col-md-2">
                            <div class="product-title text-success">Rp.{{ number_format($totalPrice ?? 0) }}</div>
                            <div class="product-subtitle">Total</div>
                        </div>
                        <div class="col-8 col-md-3">
                            <button {{ !$ongkir ? 'disabled' : '' }} type="submit"
                                class="btn btn-success mt-4 px-4 btn-block">
                                Pesan Sekarang
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
@endsection

@push('addon-script')
    <script src="/vendor/vue/vue.js"></script>
    <script src="https://unpkg.com/vue-toasted"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"
        integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#origin_province, #destination_province').select2({
                ajax: {
                    url: "{{ route('provinces') }}",
                    type: 'GET',
                    dataType: 'json',
                    delay: 250,
                    data: function(params) {
                        return {
                            keyword: params.term
                        }
                    },
                    processResults: function(response) {
                        return {
                            results: response
                        }
                    },
                },
                // Set nilai default untuk origin_province berdasarkan data dari route('provinces')
                initSelection: function(element, callback) {
                    var defaultProvinceId = 12; // Ganti dengan nilai default yang Anda inginkan
                    var defaultProvince = null;
                    $.ajax({
                        url: "{{ route('provinces') }}",
                        dataType: 'json',
                        success: function(response) {
                            defaultProvince = response.find(function(province) {
                                return province.id === defaultProvinceId;
                            });
                            if (defaultProvince) {
                                callback(defaultProvince);
                            }
                        }
                    });
                }
            });

            $('#origin_city, #destination_city').select2();

            $('#origin_province').on('change', function() {
                $('#origin_city').empty();
                $('#origin_city').append('<option>Choose City</option>');
                $('#origin_city').select2('close');
                $('#origin_city').select2({
                    ajax: {
                        url: "{{ route('cities') }}",
                        type: 'GET',
                        dataType: 'json',
                        delay: 250,
                        data: function(params) {
                            return {
                                keyword: params.term,
                                province_id: $('#origin_province').val()
                            }
                        },
                        processResults: function(response) {
                            return {
                                results: response
                            }
                        },
                    }
                });
            });

            $('#destination_province').on('change', function() {
                $('#destination_city').empty();
                $('#destination_city').append('<option>Choose City</option>');
                $('#destination_city').select2('close');
                $('#destination_city').select2({
                    ajax: {
                        url: "{{ route('cities') }}",
                        type: 'GET',
                        dataType: 'json',
                        delay: 250,
                        data: function(params) {
                            return {
                                keyword: params.term,
                                province_id: $('#destination_province').val()
                            }
                        },
                        processResults: function(response) {
                            return {
                                results: response
                            }
                        },
                    }
                });
            });

            $('#checkBtn').on('click', function(e) {
                e.preventDefault();
                let origin = $('#origin_city').val();
                let destination = $('#destination_city').val();
                let courier = $('#courier').val();
                let weight = $('#weight').val();
                $.ajax({
                    url: "{{ route('check-ongkir') }}",
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        _token: "{{ csrf_token() }}",
                        origin: origin,
                        destination: destination,
                        courier: courier,
                        weight: weight
                    },
                    beforeSend: function() {
                        $('#checkBtn').html('Loading...');
                        $('#checkBtn').attr('disabled', true);
                    },
                    success: function(response) {
                        $('#result').removeClass('d-none');
                        $('#checkBtn').html('Submit');
                        $('#checkBtn').attr('disabled', false);
                        $('#result').empty();
                        $('#result').append(`
                                <div class="col-12">
                                    <div class="card border rounded shadow">
                                        <div class="card-body">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Service</th>
                                                        <th>Description</th>
                                                        <th>Harga</th>
                                                        <th>Estimasi kedatangan</th>
                                                        <th>Pilihan</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="resultBody">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            `);
                        $.each(response, function(i, val) {
                            $('#resultBody').append(`
        <tr>
            <td>${val.service}</td>
            <td>${val.description}</td>
            <td>${val.cost[0].value}</td>
            <td>${val.cost[0].etd}</td>
            <td>
                <button class="btn btn-primary" onclick="redirectToCart(${val.cost[0].value})">Pilih</button>
            </td>
        </tr>
    `);
                        });



                    },
                    error: function(xhr) {
                        console.log(xhr.responseText);
                    }
                });
            });
        });

        function redirectToCart(value) {
            console.log('Value:', value);
            window.location.href = "{{ route('cart') }}?ongkir=" + value;
        }
    </script>
    <script>
        var locations = new Vue({
            el: "#locations",
            mounted() {
                this.getProvincesData();
            },
            data: {
                provinces: null,
                regencies: null,
                provinces_id: null,
                regencies_id: null,
            },
            methods: {
                getProvincesData() {
                    var self = this;
                    axios.get('{{ route('api-provinces') }}')
                        .then(function(response) {
                            self.provinces = response.data;
                        })
                },
                getRegenciesData() {
                    var self = this;
                    axios.get('{{ url('api/regencies') }}/' + self.provinces_id)
                        .then(function(response) {
                            self.regencies = response.data;
                        })
                },
            },
            watch: {
                provinces_id: function(val, oldVal) {
                    this.regencies_id = null;
                    this.getRegenciesData();
                },
            }
        });
    </script>
    <script>
        function incrementAmount() {
            var amountInput = document.getElementById('amount');
            amountInput.value = parseInt(amountInput.value) + 1;
        }

        function decrementAmount() {
            var amountInput = document.getElementById('amount');
            var currentAmount = parseInt(amountInput.value);
            if (currentAmount > 1) {
                amountInput.value = currentAmount - 1;
            }
        }
    </script>







@endpush
