import 'package:flutter/material.dart';
import 'ingresar_datos.dart'; // Importamos la pantalla de ingresar datos

class PantallaBienvenida extends StatelessWidget {
  final String usuario;

  const PantallaBienvenida({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenida'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '¡Bienvenido, $usuario!',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navegar a la pantalla de ingresar datos
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IngresarDatos()),
                  );
                },
                child: const Text('Ingresar Datos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
