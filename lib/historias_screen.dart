import 'package:flutter/material.dart';

class HistoriaScreen extends StatelessWidget {
  const HistoriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Como empezó todo",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 148, 7, 7),
        centerTitle: true,
        elevation: 0,
      ),

      body: Container(
        color: Colors.pink[50],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // TÍTULO DEL LIBRO
                Text(
                  "NUESTRA HISTORIA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 30),

                // CONTENIDO
                Text(
                  '''Esta historia no comenzó como suelen comenzar las historias que se cuentan con orgullo. No hubo certezas, ni señales claras, ni un amor inmediato. Comenzó de forma silenciosa, casi invisible, un miércoles cualquiera, en una clase de inglés A2. Para cualquiera habría sido solo una materia más; para ella, era una batalla semanal contra los nervios, el miedo a equivocarse y la sensación constante de no pertenecer.
      
      Ella se sentaba siempre atrás, junto a la ventana, buscando refugio en el cielo y en el silencio. Observaba más de lo que hablaba. Esperaba más de lo que decía. Él, en cambio, se sentaba adelante, cerca de la puerta, como alguien que parecía tener su lugar claro en el mundo. No se conocían, no se buscaban, no se esperaban. Pero el destino, con su forma particular de insistir, empezó a cruzarlos.
      
      Cada vez que el profesor los hacía hablar en círculo, ella se ponía nerviosa. Pronunciaba mal, dudaba, se sentía pequeña. Y él, sin saber el torbellino que causaba, le pedía que repitiera. No por crueldad, no por burla, sino porque quería escucharla. Ella decidió que no le agradaba. Era una forma de protegerse. Él, en cambio, empezó a notarla.
      
      El primer mensaje llegó un 17 de agosto de 2024. Era algo simple: un deber de inglés, el Cambridge. Para ella fue solo un favor más, una conversación que debía terminar rápido. Para él fue una excusa. No sabía aún por qué, pero quería hablarle. Ella respondió con distancia, intentando cerrar la puerta antes de que algo se colara. Él siguió escribiendo. Y, sin darse cuenta, ella empezó a sonreír frente a la pantalla.
      
      Las conversaciones se repitieron. A veces ella desaparecía, no por desinterés, sino por agotamiento. Él dudaba, pensaba que había dicho algo mal. Ninguno sabía lo que el otro sentía realmente, pero ambos volvían. Siempre volvían.
      
      Las noches se alargaron. Ella sufría de insomnio y él aparecía con palabras que llenaban el silencio. Poco a poco, hablar se volvió costumbre. Para ella, una compañía inesperada. Para él, algo que empezaba a importar más de lo que admitía. Ella pensaba que él miraba a alguien más, que ella solo era un puente, una conversación pasajera. Él, sin saberlo, ya la estaba eligiendo.
      
      La primera salida fue torpe, confusa, llena de malos entendidos. Un helado que terminó siendo un frappé de mango en pleno frío. Un bus lleno de preguntas, intentos de cercanía y nervios mal manejados. Ella entró en pánico ante el contacto físico. Él hablaba demasiado porque estaba nervioso. Aun así, ninguno se fue. Algo los mantenía ahí.
      
      A ella le gustaba su voz. Suave, rápida, llena de vida. A él le intrigaba su silencio. Ella sentía que él era demasiado sociable para su mundo tranquilo. Él sentía que ella era un misterio que quería entender. Y aun con dudas, siguieron.
      
      El día del examen final de inglés marcó un quiebre. Ella se arregló más de lo normal, con nervios y vergüenza, sin saber por qué. Cuando él la vio llegar, la vio distinta. Bajo el sol, sus ojos se encontraron y algo cambió para ambos. El primer beso fue torpe, tímido, pero real. No fue perfecto, pero fue suficiente para desordenar todo.
      
      Después llegaron las emociones difíciles. Las verdades que dolían, las dudas, el miedo a salir lastimados. Hubo una noticia que lo complicó todo y que puso a prueba lo que apenas estaba naciendo. Ella lloró, se enojó, pensó en irse. Él guardó silencios que no debió. Aun así, ella decidió quedarse. Y él no supo todavía cómo cuidar del todo lo que tenía entre las manos.
      
      Hubo viajes que se volvieron recuerdos suaves. Baños, la iglesia, una vela encendida. Momentos de calma en medio del caos. También hubo primeras veces que dolieron, aprendizajes incómodos, inseguridades expuestas. Nada fue fácil, pero todo fue real.
      
      Luego llegaron las peleas, las pausas, los silencios largos. Se alejaron. Ella creyó que era el final, que había amado sola. Él sintió el vacío, pero no supo cómo volver sin lastimar otra vez.
      
      El tiempo pasó. Ambos cambiaron. Ella intentó soltar. Él intentó entenderse. Y cuando parecía que todo había quedado atrás, el destino volvió a cruzarlos.
      
      El reencuentro fue distinto. Menos inocente, más honesto. Sin promesas grandes, pero con más verdad. Hubo días hermosos y días difíciles. Hubo miedo, pero también decisión. Hasta que un día, sin discursos largos ni planes perfectos, él le preguntó si quería ser su novia. Ella dijo que sí, no porque todo fuera perfecto, sino porque ya no tenía dudas.
      
      El primer “te amo” llegó después, cuando ambos entendieron el peso de esa palabra. No fue ligera, no fue apresurada. Fue sincera.
      
      Hoy su historia no es perfecta. Es caótica, intensa, a ratos dolorosa y profundamente real. Es una historia hecha de errores, regresos, aprendizajes y amor. No es una historia ideal, pero es verdadera. Y eso la hace única.
      
      Porque al final, no se eligieron cuando todo era fácil. Se eligieron cuando ya sabían quiénes eran, con miedos, con heridas, con ganas de amar sin huir. Y eso, aunque no parezca, también es una forma de amor.''',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.5, height: 1.7),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
