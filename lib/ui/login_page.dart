import 'package:flutter/material.dart';
import 'package:tokokita/ui/registrasi_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final bool _isLoading = false;

  final _emailTextboxController = TextEditingController();
  final _passwordTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900], // Warna merah khas Marvel
        title: const Text(
          'Login Sufyan Abdur Rofiq || H1D022004',
          style: TextStyle(color: Colors.white), // Teks putih
        ),
        centerTitle: false, // Tetap berada di kiri
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 255, 229, 180), // Warna emas Marvel
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Selamat Datang di Toko Sufyan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red, // Teks dengan warna merah khas Marvel
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.network(
                    'https://example.com/marvel_background.jpg', // URL gambar bertema Marvel
                    height: 150,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      return const Icon(
                        Icons
                            .error, // Menampilkan ikon error jika gagal memuat gambar
                        size: 150,
                        color: Colors.red,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  _emailTextField(),
                  _passwordTextField(),
                  _buttonLogin(),
                  const SizedBox(
                    height: 30,
                  ),
                  _buttonRegistrasi(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Membuat Textbox email
  Widget _emailTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Email",
        labelStyle:
            TextStyle(color: Colors.red), // Warna label merah khas Marvel
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
        return null;
      },
    );
  }

  // Membuat Textbox password
  Widget _passwordTextField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: _passwordTextboxController,
      validator: (value) {
        if (value!.isEmpty) {
          return "Password harus diisi";
        }
        return null;
      },
    );
  }

  // Membuat Tombol Login
  Widget _buttonLogin() {
    return Container(
      margin: const EdgeInsets.only(left: 0, top: 15, right: 0, bottom: 5),
      child: SizedBox(
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // Warna merah khas Marvel
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            padding: const EdgeInsets.symmetric(vertical: 20),
          ),
          child: const Text("Login"),
          onPressed: () {
            var validate = _formKey.currentState!.validate();
          },
        ),
      ),
    );
  }

  // Membuat Tombol Registrasi
  Widget _buttonRegistrasi() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black, // Warna hitam Marvel
            textStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: const Text("Registrasi"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegistrasiPage()),
            );
          },
        ),
      ),
    );
  }
}
