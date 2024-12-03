import 'package:flutter/material.dart';
import 'resultado.dart'; // Importamos la pantalla de resultado

class IngresarDatos extends StatefulWidget {
  const IngresarDatos({super.key});

  @override
  _IngresarDatosState createState() => _IngresarDatosState();
}

class _IngresarDatosState extends State<IngresarDatos> {
  String pizzaTipo = 'Vegetariana';
  String ingredienteSeleccionado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecciona Ingredientes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selecciona tu pizza $pizzaTipo',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            if (pizzaTipo == 'Vegetariana')
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ingredienteSeleccionado = 'Pimiento';
                      });
                    },
                    child: const Text('Pimiento'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ingredienteSeleccionado = 'Tofu';
                      });
                    },
                    child: const Text('Tofu'),
                  ),
                ],
              )
            else
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ingredienteSeleccionado = 'Peperoni';
                      });
                    },
                    child: const Text('Peperoni'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ingredienteSeleccionado = 'Jamón';
                      });
                    },
                    child: const Text('Jamón'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ingredienteSeleccionado = 'Salmón';
                      });
                    },
                    child: const Text('Salmón'),
                  ),
                ],
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de resultados
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultado(
                      tipoPizza: pizzaTipo,
                      ingrediente: ingredienteSeleccionado,
                    ),
                  ),
                );
              },
              child: const Text('Ver Resultado'),
            ),
          ],
        ),
      ),
    );
  }
}
