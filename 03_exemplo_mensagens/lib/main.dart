import 'package:flutter/material.dart';
import '1_tooltip.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Mensagens",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.green),
      home: ExemploTooltip(),
    );
  }
}