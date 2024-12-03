import 'package:flutter/material.dart';
import 'ingresar_datos.dart'; // Importamos la pantalla de ingresar datos
import 'pantalla_bienvenida.dart'; // Importamos la pantalla de bienvenida

class PantallaLogin extends StatefulWidget {
  const PantallaLogin({super.key});

  @override
  _PantallaLoginState createState() => _PantallaLoginState();
}

class _PantallaLoginState extends State<PantallaLogin> {
  final TextEditingController _controllerUsuario = TextEditingController();

  void _ingresar() {
    if (_controllerUsuario.text.isNotEmpty) {
      // Navegar a la pantalla de bienvenida
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PantallaBienvenida(usuario: _controllerUsuario.text),
        ),
      );
    } else {
      // Mostrar mensaje de error
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Por favor ingresa tu nombre de usuario'),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controllerUsuario,
              decoration: const InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _ingresar,
              child: const Text('Ingresar'),
            ),
          ],
        ),
      ),
    );
  }
}
