import 'package:flutter/material.dart';

class CartasScreen extends StatelessWidget {
  const CartasScreen({super.key});

  final List<Map<String, String>> cartas = const [
    {"titulo": "Carta 1", "texto": "Te amo sin saber cómo... — Pablo Neruda"},
    {
      "titulo": "Carta 2",
      "texto": "Amarte es mi ocupación favorita... — Victor Hugo",
    },
    {
      "titulo": "Carta 3",
      "texto": "Si sé lo que es el amor, es gracias a ti. — Hermann Hesse",
    },
    {
      "titulo": "Carta 4",
      "texto":
          "No hay remedio para el amor sino amar más. — Henry David Thoreau",
    },
    {
      "titulo": "Carta 5",
      "texto":
          "Mi amor por ti es un viaje; empezando en siempre y terminando en nunca. — Charles Dickens",
    },
    {
      "titulo": "Carta 6",
      "texto": "Eres mi corazón, mi vida, mi única mente. — John Keats",
    },
    {
      "titulo": "Carta 7",
      "texto":
          "Te amo con la intensidad de los volcanes y la calma de la luna. — Elizabeth Barrett Browning",
    },
    {
      "titulo": "Carta 8",
      "texto":
          "No hay nada que desee más que vivir contigo y en tus ojos perderme. — Leo Tolstoy",
    },
    {
      "titulo": "Carta 9",
      "texto":
          "Amarte es mi destino, y cada latido me recuerda que eres mi vida. — Gustave Flaubert",
    },
    {
      "titulo": "Carta 10",
      "texto":
          "Si tuviera una flor por cada vez que pienso en ti, podría caminar por mi jardín para siempre. — Alfred Tennyson",
    },
    {
      "titulo": "Carta 11",
      "texto":
          "Mi amor por ti no conoce límites ni tiempo, solo existe y crece sin medida. — Rainer Maria Rilke",
    },
    {
      "titulo": "Carta 12",
      "texto":
          "Amarte es entender que cada instante a tu lado es un tesoro eterno. — Antoine de Saint-Exupéry",
    },
    {
      "titulo": "Carta 13",
      "texto":
          "Eres el sueño que nunca supe que tenía y la realidad que siempre quise. — F. Scott Fitzgerald",
    },
    {
      "titulo": "Carta 14",
      "texto":
          "Cada palabra que escribo es un pedazo de mi alma que te entrego. — Virginia Woolf",
    },
    {
      "titulo": "Carta 15",
      "texto":
          "Te amaré hasta el último suspiro de mi existencia y más allá. — Emily Brontë",
    },
    {
      "titulo": "Carta 16",
      "texto":
          "Si pudiera darte una sola cosa en la vida, me gustaría darte la capacidad de verte a través de mis ojos. — Oscar Wilde",
    },
    {
      "titulo": "Carta 17",
      "texto":
          "Mi corazón te pertenece, y en él encontrarás siempre un refugio de amor. — Jane Austen",
    },
    {
      "titulo": "Carta 18",
      "texto":
          "No sé qué es más dulce, el recuerdo de tu risa o la esperanza de tu abrazo. — Lord Byron",
    },
    {
      "titulo": "Carta 19",
      "texto":
          "Amarte no fue una elección, sino la consecuencia más natural de mi existencia. — André Gide",
    },
    {
      "titulo": "Carta 20",
      "texto":
          "Cada día que paso contigo se convierte en mi nuevo día favorito. — Leo Buscaglia",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final startDate = DateTime(2026, 2, 14); // fecha de inicio
    final today = DateTime.now();
    int diasTranscurridos = today.difference(startDate).inDays + 1;
    int cartasDisponibles = diasTranscurridos.clamp(0, cartas.length);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cada uno es pensado en ti ",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 148, 7, 7),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.pink[50],
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: cartasDisponibles,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white.withOpacity(0.9),
              elevation: 8,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: const Icon(
                  Icons.mail,
                  color: Colors.pinkAccent,
                  size: 36,
                ),
                title: Text(
                  cartas[index]['titulo']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.pinkAccent,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    cartas[index]['texto']!,
                    style: const TextStyle(fontSize: 16, height: 1.4),
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
