import 'package:flutter/material.dart';
import 'package:tokokita/model/produk.dart';

class ProdukForm extends StatefulWidget {
  Produk? produk;

  ProdukForm({super.key, this.produk});

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _formKey = GlobalKey<FormState>();
  final bool _isLoading = false;
  String judul = "Tambah Produk Sufyan Abdur Rofiq || H1D022004";
  String tombolSubmit = "Simpan";

  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  void initState() {
    super.initState();
    isUpdate();
  }

  isUpdate() {
    if (widget.produk != null) {
      setState(() {
        judul = "Ubah Produk Sufyan Abdur Rofiq || H1D022004 ";
        tombolSubmit = "UBAH";
        _kodeProdukTextboxController.text = widget.produk!.kodeProduk!;
        _namaProdukTextboxController.text = widget.produk!.namaProduk!;
        _hargaProdukTextboxController.text =
            widget.produk!.hargaProduk.toString();
      });
    } else {
      judul = "Tambah Produk Sufyan Abdur Rofiq || H1D022004";
      tombolSubmit = "Simpan";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900], // Warna merah khas Marvel
        title: Text(
          judul,
          style: const TextStyle(color: Colors.white), // Teks putih
        ),
      ),
      body: Container(
        color:
            const Color.fromARGB(255, 255, 229, 180), // Warna emas khas Marvel
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // Menambahkan Judul
                  const Text(
                    "Tambah Produk di Toko Sufyan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red, // Warna teks merah khas Marvel
                    ),
                    textAlign: TextAlign.center, // Rata tengah
                  ),
                  const SizedBox(height: 20), // Jarak antara judul dan textbox
                  _kodeProdukTextField(),
                  const SizedBox(height: 10), // Jarak antara field
                  _namaProdukTextField(),
                  const SizedBox(height: 10), // Jarak antara field
                  _hargaProdukTextField(),
                  const SizedBox(height: 20), // Jarak sebelum tombol
                  _buttonSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Membuat Textbox Kode Produk dengan tema Marvel
  Widget _kodeProdukTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Kode Produk",
        labelStyle: TextStyle(color: Colors.red), // Label merah khas Marvel
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.red, width: 2.0), // Border merah saat fokus
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.black), // Border hitam saat tidak fokus
        ),
      ),
      keyboardType: TextInputType.text,
      controller: _kodeProdukTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Kode Produk harus diisi";
        }
        return null;
      },
    );
  }

  // Membuat Textbox Nama Produk dengan tema Marvel
  Widget _namaProdukTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Nama Produk",
        labelStyle: TextStyle(color: Colors.red), // Label merah khas Marvel
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.red, width: 2.0), // Border merah saat fokus
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.black), // Border hitam saat tidak fokus
        ),
      ),
      keyboardType: TextInputType.text,
      controller: _namaProdukTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Nama Produk harus diisi";
        }
        return null;
      },
    );
  }

  // Membuat Textbox Harga Produk dengan tema Marvel
  Widget _hargaProdukTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Harga Produk",
        labelStyle: TextStyle(color: Colors.red), // Label merah khas Marvel
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.red, width: 2.0), // Border merah saat fokus
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.black), // Border hitam saat tidak fokus
        ),
      ),
      keyboardType: TextInputType.number,
      controller: _hargaProdukTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Harga harus diisi";
        }
        return null;
      },
    );
  }

  // Membuat Tombol Simpan/Ubah dengan tema Marvel
  Widget _buttonSubmit() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.red[900], // Warna tombol merah khas Marvel
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 12), // Atur margin sesuai kebutuhan
      ),
      child: Text(
        tombolSubmit,
        style: const TextStyle(
          color: Colors.white, // Warna teks putih
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        var validate = _formKey.currentState!.validate();
        if (validate) {
          // Logika penyimpanan produk di sini
        }
      },
    );
  }
}
