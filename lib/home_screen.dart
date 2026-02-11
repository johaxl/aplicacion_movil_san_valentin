import 'package:flutter/material.dart';
import 'data.dart';
import 'cartas_screen.dart';
import 'historias_screen.dart';
import 'vales_screen.dart';
import 'razones_screen.dart';
import 'notas_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      appBar: AppBar(title: const Text("Para Ti 💕")),

      // 👉 APP DRAWER
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.pink),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.favorite, color: Colors.white, size: 40),
                  SizedBox(height: 10),
                  Text(
                    "Para Ti 💕",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Text(
                    "Hecho con amor",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            drawerItem(
              context,
              Icons.mail,
              "Cartas de Amor 💌",
              const CartasScreen(),
            ),
            drawerItem(
              context,
              Icons.book,
              "Nuestra Historia 📖",
              const HistoriaScreen(),
            ),
            drawerItem(
              context,
              Icons.card_giftcard,
              "Vales de Amor 🎁",
              const ValesScreen(),
            ),
            drawerItem(
              context,
              Icons.favorite,
              "100 Razones ❤️",
              const RazonesScreen(),
            ),
            drawerItem(
              context,
              Icons.note,
              "Notas para Nosotros 📝",
              NotasScreen(),
            ),
          ],
        ),
      ),

      // 👉 CONTENIDO PRINCIPAL
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "❤️ Llevamos juntos ${diasJuntos()} días ❤️",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                "Cada día contigo es un regalo 🎁",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 👉 ITEM DEL DRAWER
  Widget drawerItem(
    BuildContext context,
    IconData icon,
    String texto,
    Widget pantalla,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.pink),
      title: Text(texto),
      onTap: () {
        Navigator.pop(context); // cerrar drawer
        Navigator.push(context, MaterialPageRoute(builder: (_) => pantalla));
      },
    );
  }
}
