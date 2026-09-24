import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  const new({super.key});

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  TextEditingController nota1 = TextEditingController();
  TextEditingController nota2 = TextEditingController();
  double media = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cálculo da Média")),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: nota1,
                decoration: InputDecoration(labelText: "Nota 1"),
              ),
              TextField(
                controller: nota2,
                decoration: InputDecoration(labelText: "Nota 2"),
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  media = 
                   (double.parse(nota1.text) + double.parse(nota2.text))/2;
                });
              }, child: Text("Calcular"),
              ),
              Text("Média: $media", style: TextStyle(fontSize: 24),)
            ],
          ),
        ),
      ),
    );
  }
}
