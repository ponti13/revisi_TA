<footer>
    <div class="container">
        <br>
        <div class="row">
            <div class="col-md-3">
                <h4>Selera Indonesia</h4>
                <p>Selera Indonesia adalah toko penyedia barang UMKM seluruh Indonesia yang terdapat pembayaran online
                    dan pengiriman ke tujuan.</p>
            </div>
            <div class="col-md-3">
                <h4>Kategori</h4>
                <ul>
                    @foreach ($categories as $c)
                        <li><a href="{{ route('categories-detail', $c->slug) }}">{{ $c->name }}</a></li>
                    @endforeach
                </ul>
            </div>
            <div class="col-md-3">
                <h4>Kontak</h4>
                <p>Email: seleraid1322@gmail.com</p>
                <p>Nomor WhatsApp: 0895338898951</p>
            </div>
            <div class="col-md-3">
                <h4>Maps</h4>
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.8158709815975!2d109.30995367390305!3d-0.06348739993587714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e1d59648040a21f%3A0xc51da35905cc747!2sJl.%20Harapan%20Jaya%2C%20Kota%20Baru%2C%20Kec.%20Pontianak%20Sel.%2C%20Kota%20Pontianak%2C%20Kalimantan%20Barat%2078115!5e0!3m2!1sid!2sid!4v1692591307317!5m2!1sid!2sid"
                    width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy">
                </iframe>
            </div>
        </div>
    </div>
</footer>
