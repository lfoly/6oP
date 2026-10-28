import 'package:flutter/material.dart';
import 'calculo_media.dart';
import 'creditos.dart';
import 'principal.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Controllers",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        appBarTheme: AppBarTheme(backgroundColor: Colors.lightGreen,)
        ),
      routes: <String, WidgetBuilder> {
        '/CalculoMedia': (BuildContext context) => const CalculoMedia(),
        '/Creditos': (BuildContext context) => const Creditos(),
      },
      home: const Principal(),
    );
  }
}