import 'package:flutter/material.dart';
//import 'tela_principal.dart';
//import 'tela2.dart';
import 'tela3.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Inicial Simples",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green, 
        appBarTheme: AppBarTheme(backgroundColor: Colors.amber,),
      ),
      //home: Principal(),
      //home: Tela2(),
      home: Tela3(),
    );
  }
}
