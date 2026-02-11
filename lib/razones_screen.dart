import 'package:flutter/material.dart';

class RazonesScreen extends StatelessWidget {
  const RazonesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("100 Razones ❤️")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.favorite, color: Colors.red),
            title: Text("Razón ${index + 1}"),
            subtitle: const Text("Porque haces mi mundo más bonito 💕"),
          );
        },
      ),
    );
  }
}
