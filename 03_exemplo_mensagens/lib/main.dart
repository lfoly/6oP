import 'package:flutter/material.dart';
//import '1_tooltip.dart';
//import '2_snackbar.dart';
//import '3_alert_dialog.dart';
import '4_simple_dialog.dart';

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
      //home: ExemploTooltip(),
      //home: ExemploSnackbar(),
      //home: ExemploAlertDialog(),
      home: ExemploSimpleDialog(),
    );
  }
}