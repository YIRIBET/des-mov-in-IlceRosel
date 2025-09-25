import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int counter; // 👈 variable que recibe el valor

  const SecondPage({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the second page"),
            const SizedBox(height: 20),
            Text(
              "El contador recibido es: $counter", // 👈 mostrar el valor
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // 👈 regresar
              },
              child: const Text("Regresar"),
            ),
          ],
        ),
      ),
    );
  }
}
