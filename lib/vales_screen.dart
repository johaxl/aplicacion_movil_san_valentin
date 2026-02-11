import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ValesScreen extends StatefulWidget {
  const ValesScreen({super.key});

  @override
  State<ValesScreen> createState() => _ValesScreenState();
}

class _ValesScreenState extends State<ValesScreen> {
  List<Map<String, dynamic>> vales = [];

  @override
  void initState() {
    super.initState();
    _cargarVales();
  }

  Future<void> _cargarVales() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Map<String, dynamic>> inicial = List.generate(50, (index) {
      List<String> recompensas = [
        "Un beso",
        "Un abrazo",
        "Una salida sorpresa",
        "Un chocolate",
        "Una cena romántica",
        "Masaje relajante ",
        "Ver tu película favorita",
        "Un mensaje bonito",
        "Un paseo al aire libre",
        "Un postre delicioso",
        "Una flor",
        "Tu canción favorita",
        "Un desayuno en la cama",
        "Un picnic en el parque",
        "Tiempo para jugar tu juego favorito",
        "Un día sin tareas para ti",
        "Un dibujo o nota hecha a mano",
        "Un helado",
        "Un día de spa casero",
        "Un abrazo extra largo",
        "Un café preparado por mí",
        "Leer un libro juntos",
        "Ver el atardecer juntos",
        "Ir a tu heladería favorita",
        "Noche de películas en casa",
        "Una tarde de manualidades",
        "Un mensaje sorpresa en tu bolso",
        "Escuchar música juntos",
        "Ir a caminar de la mano",
        "Un abrazo cuando llegues a casa",
        "Una encebollado",
        "Un helado compartido",
        "Hacer tu tarea conmigo",
        "Un tarde para dibujar juntos",
        "Una tarde de risas y juegos",
        "Tu postre favorito hecho por mí",
        "Una nota escondida con un piropo",
        "Un día de karaoke",
        "Un paseo por tu lugar favorito",
        "Prepararte tu bebida favorita",
        "Un baile juntos",
        "Un abrazo sorpresa en cualquier momento",
        "Cantar juntos tu canción favorita",
        "Un desayuno sorpresa",
        "Una tarde de juegos de mesa",
        "Un paseo bajo la lluvia",
        "Un dibujo romántico para ti",
        "Escribir un mensaje dulce en la nevera",
        "Un postre casero sorpresa",
        "Una tarde de abrazos y películas",
      ];
      bool usado = prefs.getBool('vale_$index') ?? false;
      return {
        "titulo": "Vale #${index + 1}",
        "recompensa": recompensas[index],
        "usado": usado,
      };
    });

    setState(() {
      vales = inicial;
    });
  }

  Future<void> _usarVale(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      vales[index]["usado"] = true;
    });
    await prefs.setBool('vale_$index', true); // Guardamos de manera persistente
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("¡Usaste ${vales[index]["recompensa"]}! ❤️"),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vales de Amor",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 148, 7, 7),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.pink[50],
        child: GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: vales.length,
          itemBuilder: (context, index) {
            bool usado = vales[index]["usado"];
            return GestureDetector(
              onTap: () {
                if (!usado) {
                  _usarVale(index);
                }
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: usado
                    ? Colors.grey.shade400
                    : Colors.pink.shade100.withOpacity(0.9),
                elevation: 6,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "${vales[index]["titulo"]}\n${vales[index]["recompensa"]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: usado ? Colors.grey.shade700 : Colors.redAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
