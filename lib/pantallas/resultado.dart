import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String tipoPizza;
  final String ingrediente;

  const Resultado({super.key, required this.tipoPizza, required this.ingrediente});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pizza ${tipoPizza == 'Vegetariana' ? 'Vegetariana' : 'No Vegetariana'}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                'Ingredientes: Mozzarella, Tomate, $ingrediente',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
