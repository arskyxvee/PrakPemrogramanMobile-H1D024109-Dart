import 'package:flutter/material.dart';
import 'package:tokokita/ui/produk_page.dart';
// Halaman lain di CRUD Bagian 1 dapat diuji langsung dengan mengganti home:
// import 'package:tokokita/ui/login_page.dart';
// import 'package:tokokita/ui/registrasi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Kita',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
      ),
      home: const ProdukPage(),
      // home: const LoginPage(),
      // home: const RegistrasiPage(),
    );
  }
}
