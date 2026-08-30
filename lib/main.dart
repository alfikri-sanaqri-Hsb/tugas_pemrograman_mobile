import 'package:flutter/material.dart';
import 'user_model.dart';

void main() {
  // Simulasi data JSON dari API
  // Beberapa data sengaja tidak diberikan untuk menguji Null Safety
  Map<String, dynamic> jsonResponse = {
    'id': 1,
    'name': 'Alfikri',
    'email': 'alfikri@example.com',
  };

  // Mengubah JSON menjadi Object UserModel
  UserModel user = UserModel.fromJson(jsonResponse);

  // Menampilkan hasil ke console
  print('=== HASIL FROM JSON ===');
  print('ID       : ${user.id}');
  print('Nama     : ${user.name}');
  print('Email    : ${user.email}');
  print('Umur     : ${user.age}');
  print('Aktif    : ${user.isActive}');

  // Mengubah Object kembali menjadi JSON
  print('');
  print('=== HASIL TO JSON ===');
  print(user.toJson());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas #2 Mobile Developer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Data Class OOP Dart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text('Nama: ${UserModel.fromJson({
                'id': 1,
                'name': 'Alfikri',
                'email': 'alfikri@example.com',
              }).name}'),
              const SizedBox(height: 10),
              const Text('fromJson() dan toJson() berhasil'),
            ],
          ),
        ),
      ),
    );
  }
}