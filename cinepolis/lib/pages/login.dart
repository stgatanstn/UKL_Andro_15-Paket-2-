import 'package:cinepolis/pages/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Tombol kembali
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'lib/images/Login.png',
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Hai Moviegoers!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 28, 115)),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sudah siap merasakan pengalaman menonton yang tidak terlupakan?',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              // Input Email/WhatsApp
              const Text(
                'Email or WhatsApp Number',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Email or WhatsApp Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Input Password
              const Text(
                "Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 10),
              const TextField(
                obscureText: true, // Menyembunyikan teks password
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Checkbox
              Row(
                children: [
                  Checkbox(
                    value: false, // Ubah sesuai logika Anda
                    onChanged: (value) {
                      // Tambahkan aksi untuk perubahan nilai checkbox
                    },
                  ),
                  const Expanded(
                    child: Text(
                      "Ya, saya menerima syarat dan ketentuan yang berlaku",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Tombol Login
              SizedBox(
                width: double.infinity, // Tombol memanjang penuh
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 27, 28, 115),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Navigasi ke Homepage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Teks untuk Daftar
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Belum punya akun?"),
                  TextButton(
                    onPressed: () {
                      // Aksi untuk "Daftar"
                    },
                    child: const Text(
                      "Daftar Disini",
                      style: TextStyle(
                        color: Color.fromARGB(255, 27, 28, 115),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
