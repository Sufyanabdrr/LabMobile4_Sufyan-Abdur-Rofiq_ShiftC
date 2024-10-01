import 'package:flutter/material.dart';
import 'package:tokokita/model/produk.dart';
import 'package:tokokita/ui/produk_form.dart';

class ProdukDetail extends StatefulWidget {
  Produk? produk;

  ProdukDetail({super.key, this.produk});

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  // Style yang sama untuk Kode, Nama, dan Harga
  final TextStyle detailTextStyle = const TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold, // Gaya tebal
    color: Colors.red, // Warna teks merah Marvel
    fontFamily: 'Roboto', // Font keluarga yang sama
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900], // Warna merah khas Marvel
        title: const Text(
          'Detail Produk Sufyan Abdur Rofiq || H1D022004',
          style: TextStyle(color: Colors.white), // Teks putih
        ),
      ),
      body: Container(
        color:
            const Color.fromARGB(255, 255, 229, 180), // Warna emas khas Marvel
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kode : ${widget.produk!.kodeProduk}",
              style: detailTextStyle, // Menggunakan style yang sama
            ),
            const SizedBox(height: 10), // Jarak antar teks
            Text(
              "Nama : ${widget.produk!.namaProduk}",
              style: detailTextStyle, // Menggunakan style yang sama
            ),
            const SizedBox(height: 10), // Jarak antar teks
            Text(
              "Harga : Rp. ${widget.produk!.hargaProduk.toString()}",
              style: detailTextStyle, // Menggunakan style yang sama
            ),
            const SizedBox(height: 20), // Jarak sebelum tombol
            _tombolHapusEdit(),
          ],
        ),
      ),
    );
  }

  Widget _tombolHapusEdit() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Tombol Edit
        Expanded(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red[900], // Warna tombol merah Marvel
              foregroundColor: Colors.white, // Teks putih
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            child: const Text("EDIT",
                style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProdukForm(
                    produk: widget.produk!,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(width: 10),
        // Tombol Hapus
        Expanded(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor:
                  Colors.red[700], // Warna merah untuk tombol hapus
              foregroundColor: Colors.white, // Teks putih
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            child: const Text("DELETE",
                style: TextStyle(fontWeight: FontWeight.bold)),
            onPressed: () => confirmHapus(),
          ),
        ),
      ],
    );
  }

  void confirmHapus() {
    AlertDialog alertDialog = AlertDialog(
      backgroundColor: Colors.red[50], // Latar belakang dialog
      content: const Text(
        "Yakin ingin menghapus data ini?",
        style: TextStyle(color: Colors.black), // Teks hitam
      ),
      actions: [
        // Tombol hapus
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.red[900], // Tombol merah khas Marvel
            foregroundColor: Colors.white, // Teks putih
          ),
          child: const Text("Ya"),
          onPressed: () {
            // Logika untuk menghapus produk
          },
        ),
        // Tombol batal
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.grey, // Tombol batal dengan warna abu-abu
            foregroundColor: Colors.white, // Teks putih
          ),
          child: const Text("Batal"),
          onPressed: () => Navigator.pop(context),
        )
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }
}
