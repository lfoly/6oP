import 'package:flutter/material.dart';
import 'pagina_inicial.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Bottom Navigation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
      ),
      home: PaginaInicial(),
    );
  }
}