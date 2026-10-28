import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Controllers"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Cálculo Média")),
            ElevatedButton(onPressed: () {}, child: Text("Créditos")),
          ],
          ),
        ),
    );
  }
}