import 'package:flutter/material.dart';
import 'pantallas/pantalla_login.dart'; // Asegúrate de importar la pantalla de login

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizzería Bella Napoli',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const PantallaLogin(), // Pantalla de Login inicial
    );
  }
}
