
import 'package:flutter/material.dart';
import 'package:belajarflutter/hello_world.dart';
import 'package:belajarflutter/column_widget.dart';
import 'package:belajarflutter/row_widget.dart';
import 'package:belajarflutter/ui/produk_form.dart';
import 'package:belajarflutter/ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: Colors.blue,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 4,
        ),
        useMaterial3: false,
      ),
      // Buka MenuPage agar semua materi Modul 2 dapat diakses dan diuji:
      home: const MenuPage(),
      // Atau jika ingin membuka langsung halaman tertentu sesuai panduan PDF:
      // home: const HelloWorld(),   // Halaman 17-18
      // home: const ColumnWidget(), // Halaman 19-20
      // home: const RowWidget(),    // Halaman 21
      // home: const ProdukForm(),   // Halaman 22-24
      // home: const ProdukPage(),   // Halaman 25-26
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul 2 - Flutter'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _menuItem(
            context,
            title: '1. Hello World',
            subtitle: 'StatelessWidget dasar (hello_world.dart)',
            page: const HelloWorld(),
          ),
          _menuItem(
            context,
            title: '2. Widget Column',
            subtitle: 'Tata letak vertikal (column_widget.dart)',
            page: const ColumnWidget(),
          ),
          _menuItem(
            context,
            title: '3. Widget Row',
            subtitle: 'Tata letak horizontal (row_widget.dart)',
            page: const RowWidget(),
          ),
          _menuItem(
            context,
            title: '4. Form Produk',
            subtitle: 'Input data & kirim ke Detail Produk (produk_form.dart)',
            page: const ProdukForm(),
          ),
          _menuItem(
            context,
            title: '5. List Data Produk',
            subtitle: 'Daftar produk dengan ListView (produk_page.dart)',
            page: const ProdukPage(),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(
    BuildContext context, {
    required String title,
    required String subtitle,
    required Widget page,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: const Icon(Icons.folder_open, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => page),
          );
        },
      ),
    );
  }
}
