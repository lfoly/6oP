
import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  const new({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  TextEditingController nomeCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  String dadosDigitados = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Controllers"),
        ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: nomeCtrl,
              decoration: const InputDecoration(labelText: "Nome"),
            ),
            TextField(controller: emailCtrl,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  dadosDigitados = 
                    "${nomeCtrl.text}, ${emailCtrl.text}";
                });
              }, 
              child: Text("Mostrar dados digitados"),
            ),
            Text("Dados digitados: $dadosDigitados"),
          ],),
        ),
      ),
    );
  }
}