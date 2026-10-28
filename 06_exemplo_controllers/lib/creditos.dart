import 'package:flutter/material.dart';

class Creditos extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Créditos")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("2026 IFF S/A"), 
            Text("Sistema Exemplo"), 
            Text("Todos os Direitos Reservados")
          ],
        ),
      ),
    );
  }
}
