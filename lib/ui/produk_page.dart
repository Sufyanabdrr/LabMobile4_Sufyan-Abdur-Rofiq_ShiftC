import 'package:flutter/material.dart';
import 'package:tokokita/model/produk.dart';
import 'package:tokokita/ui/produk_detail.dart';
import 'package:tokokita/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900], // Warna merah khas Marvel
        title: const Text(
          'List Produk Sufyan Abdur Rofiq || H1D022004',
          style: TextStyle(color: Colors.white), // Teks putih
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              child: const Icon(Icons.add,
                  size: 26.0, color: Colors.white), // Ikon putih
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProdukForm()));
              },
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.red[900], // Warna drawer merah khas Marvel
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red, // Latar belakang merah
              ),
              child: Text(
                'List Produk Toko Sufyan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.white), // Teks putih
              ),
              trailing: const Icon(Icons.logout,
                  color: Colors.white), // Ikon logout putih
              onTap: () async {
                // Tambahkan logika logout
              },
            ),
          ],
        ),
      ),
      body: Container(
        color:
            const Color.fromARGB(255, 255, 229, 180), // Warna emas khas Marvel
        child: ListView(
          children: [
            ItemProduk(
              produk: Produk(
                  id: 1,
                  kodeProduk: 'A001',
                  namaProduk: 'Kamera',
                  hargaProduk: 5000000),
            ),
            ItemProduk(
              produk: Produk(
                  id: 2,
                  kodeProduk: 'A002',
                  namaProduk: 'Kulkas',
                  hargaProduk: 2500000),
            ),
            ItemProduk(
              produk: Produk(
                  id: 3,
                  kodeProduk: 'A003',
                  namaProduk: 'Mesin Cuci',
                  hargaProduk: 2000000),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final Produk produk;

  const ItemProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              produk: produk,
            ),
          ),
        );
      },
      child: Card(
        color:
            Colors.red[100], // Warna latar belakang kartu dengan nuansa merah
        child: ListTile(
          title: Text(
            produk.namaProduk!,
            style: const TextStyle(
              color: Colors.red, // Teks merah khas Marvel
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            produk.hargaProduk.toString(),
            style: const TextStyle(
              color: Colors.black, // Warna teks hitam untuk harga
            ),
          ),
        ),
      ),
    );
  }
}
