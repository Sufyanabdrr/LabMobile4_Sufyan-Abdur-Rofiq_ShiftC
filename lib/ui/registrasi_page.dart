import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Sufyan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegistrasiPage(),
    );
  }
}

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({Key? key}) : super(key: key);

  @override
  _RegistrasiPageState createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  final _formKey = GlobalKey<FormState>();
  final _namaTextboxController = TextEditingController();
  final _emailTextboxController = TextEditingController();
  final _passwordTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900], // Warna merah khas Marvel
        title: const Text(
          "Registrasi Sufyan Abdur Rofiq || H1D022004",
          style: TextStyle(color: Colors.white), // Teks putih
        ),
        centerTitle: false, // Pastikan judul tetap di kiri
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Toko Sufyan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red, // Warna merah khas Marvel
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.network(
                    'https://example.com/marvel_background.jpg', // Gambar bertema Marvel
                    height: 150,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      return const Icon(
                        Icons
                            .error, // Tampilkan ikon error jika gagal memuat gambar
                        size: 150,
                        color: Colors.red,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Formulir Registrasi Pelanggan Toko Sufyan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red, // Warna merah
                    ),
                  ),
                  const SizedBox(height: 20),
                  _namaTextField(),
                  const SizedBox(height: 10),
                  _emailTextField(),
                  const SizedBox(height: 10),
                  _passwordTextField(),
                  const SizedBox(height: 10),
                  _passwordKonfirmasiTextField(),
                  const SizedBox(height: 20),
                  _buttonRegistrasi(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Membuat Textbox Nama
  Widget _namaTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Nama",
        hintText: "Registrasi Sufyan Abdur Rofiq",
        labelStyle:
            TextStyle(color: Colors.red), // Label warna merah khas Marvel
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red), // Border merah saat fokus
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Border hitam default
        ),
      ),
      keyboardType: TextInputType.text,
      controller: _namaTextboxController,
      validator: (value) {
        if (value!.length < 3) {
          return "Nama harus diisi minimal 3 karakter";
        }
        return null;
      },
    );
  }

  // Membuat Textbox Email
  Widget _emailTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Registrasi Sufyan Abdur Rofiq",
        labelStyle: TextStyle(color: Colors.red), // Label warna merah
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red), // Border merah saat fokus
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Border hitam default
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      controller: _emailTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email harus diisi';
        }
        Pattern pattern =
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regex = RegExp(pattern.toString());
        if (!regex.hasMatch(value)) {
          return "Email tidak valid";
        }
        return null;
      },
    );
  }

  // Membuat Textbox Password
  Widget _passwordTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Registrasi Sufyan Abdur Rofiq",
        labelStyle:
            TextStyle(color: Colors.red), // Label warna merah khas Marvel
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red), // Border merah saat fokus
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Border hitam default
        ),
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: _passwordTextboxController,
      validator: (value) {
        if (value!.length < 6) {
          return "Password harus diisi minimal 6 karakter";
        }
        return null;
      },
    );
  }

  // Membuat Textbox Konfirmasi Password
  Widget _passwordKonfirmasiTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Konfirmasi Password",
        hintText: "Registrasi Sufyan Abdur Rofiq",
        labelStyle: TextStyle(color: Colors.red), // Label warna merah
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red), // Border merah saat fokus
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Border hitam default
        ),
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
      validator: (value) {
        if (value != _passwordTextboxController.text) {
          return "Konfirmasi Password tidak sama";
        }
        return null;
      },
    );
  }

  // Membuat Tombol Registrasi dengan tema Marvel
  Widget _buttonRegistrasi() {
    return ElevatedButton(
      child: const Text("Registrasi"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Warna merah khas Marvel
        textStyle: const TextStyle(
          color: Colors.white, // Teks putih
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
      ),
      onPressed: () {
        var validate = _formKey.currentState!.validate();
        if (validate) {
          // Lakukan sesuatu saat form valid
        }
      },
    );
  }
}
