import 'package:flutter/material.dart';

class NotasScreen extends StatefulWidget {
  @override
  State<NotasScreen> createState() => _NotasScreenState();
}

class _NotasScreenState extends State<NotasScreen> {
  final TextEditingController _notaController = TextEditingController();
  final List<String> notas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notas para Nosotros 📝")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _notaController,
              decoration: const InputDecoration(
                labelText: "Escribe una nota bonita 💕",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_notaController.text.isNotEmpty) {
                setState(() {
                  notas.add(_notaController.text);
                  _notaController.clear();
                });
              }
            },
            child: const Text("Enviar 💌"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.favorite),
                  title: Text(notas[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
