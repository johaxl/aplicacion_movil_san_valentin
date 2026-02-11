import 'package:flutter/material.dart';

class ValesScreen extends StatelessWidget {
  const ValesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vales de Amor 🎁")),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
        ),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.pink.shade100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Vale #${index + 1}\nUn beso 💋",
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
