import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({Key? key}) : super(key: key);

  Stream<String> getLoadingMessages() {
    const messages = <String>[
      "Cargando Películas",
      "Comprando palomitas",
      "Cargando peliculas",
      "Llamando",
      "Ya mismo",
      "Esto está tardando"
    ];

    return Stream.periodic(const Duration(milliseconds: 1200), (step) {
      return messages[step];
    }).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Esper pro favor"),
          const SizedBox(
            height: 10,
          ),
          const CircularProgressIndicator(
            strokeWidth: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          StreamBuilder(
            stream: getLoadingMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text("Cargando..");
              return Text(snapshot.data!);
            },
          ),
        ],
      ),
    );
  }
}
