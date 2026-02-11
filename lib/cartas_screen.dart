import 'package:flutter/material.dart';

class CartasScreen extends StatelessWidget {
  const CartasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cartas de Amor 💌")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.mail, color: Colors.pink),
              title: Text("Carta ${index + 1}"),
              subtitle: const Text(
                "Te amo más de lo que las palabras pueden decir ❤️",
              ),
            ),
          );
        },
      ),
    );
  }
}
