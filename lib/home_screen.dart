import 'package:flutter/material.dart';
import 'data.dart';
import 'cartas_screen.dart';
import 'historias_screen.dart';
import 'vales_screen.dart';
import 'razones_screen.dart';
// import 'notas_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Para Ti",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 148, 7, 7),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: const Color.fromARGB(255, 148, 7, 7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.favorite, color: Colors.white, size: 40),
                  SizedBox(height: 10),
                  Text(
                    "Para Ti",
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
              "Cartas de Amor",
              const CartasScreen(),
            ),
            drawerItem(
              context,
              Icons.book,
              "Nuestra Historia",
              const HistoriaScreen(),
            ),
            drawerItem(
              context,
              Icons.card_giftcard,
              "Vales de Amor",
              const ValesScreen(),
            ),
            drawerItem(
              context,
              Icons.favorite,
              "Razones por las que te amo",
              const RazonesScreen(),
            ),
            /* drawerItem(
              context,
              Icons.note,
              "Notas para Nosotros",
              NotasScreen(),
            ), */
          ],
        ),
      ),
      body: Container(
        color: Colors.pink[50],

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Texto principal con sombra
                Text(
                  "Llevamos juntos ${diasJuntos()} días",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    shadows: [
                      Shadow(
                        blurRadius: 10,
                        color: Colors.black26,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // Texto secundario con cursiva y color suave
                Text(
                  "Cada día contigo es un regalo",
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87.withOpacity(0.9),
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40),

                // Corazón grande decorativo
                Icon(
                  Icons.favorite,
                  size: 80,
                  color: Colors.pink[300]?.withOpacity(0.8),
                ),

                const SizedBox(height: 20),

                // Texto decorativo abajo
                Text(
                  "Gracias por ser mi todo",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87.withOpacity(0.9),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Función para calcular los días juntos
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
