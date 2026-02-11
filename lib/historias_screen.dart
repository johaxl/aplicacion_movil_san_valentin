import 'package:flutter/material.dart';

class HistoriaScreen extends StatelessWidget {
  const HistoriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nuestra Historia 📖")),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          "Nuestra historia comenzó cuando menos lo esperaba...\n\n"
          "Desde ese día, cada momento contigo se volvió especial. "
          "Risas, abrazos, aprendizajes y mucho amor.\n\n"
          "Esta historia apenas comienza ❤️",
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
