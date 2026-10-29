import 'package:flutter/material.dart';
import 'contato_controller.dart';
import 'contato.dart';

class Formulario extends StatefulWidget {
  const new({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  TextEditingController nomeCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController telefoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Formulário")),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: nomeCtrl,
              decoration: const InputDecoration(labelText: 'Nome'),
              ),
            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(labelText: 'Email'),              
              ),
            TextField(
              controller: telefoneCtrl,
              decoration: const InputDecoration(labelText: 'Telefone'),              
              ),
            ElevatedButton(
              onPressed: () {
                  ContatoController.incluir(
                      Contato(
                        nome: nomeCtrl.text,
                        email: emailCtrl.text,
                        telefone: telefoneCtrl.text,
                      ),
                    );  
                  Navigator.pop(context);              
            }, child: Text("Gravar")),
          ],
        ),
      ),
    );
  }
}