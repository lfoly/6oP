import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:material_ui/material_ui.dart';
import 'listagem.dart';


class Inclusao extends StatelessWidget {
  new({super.key});

  final TextEditingController nome = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController idade = TextEditingController();

  @override
  void dispose() {
    nome.dispose();
    email.dispose();
    idade.dispose();
  }


  Future<void> gravarDados(String nome, String email, int idade) async {
    final db = FirebaseFirestore.instance;
    final pessoa = <String, dynamic>{
      "nome": nome,
      "email": email,
      "idade": idade,
    };
    await db.collection("pessoas").add(pessoa);
  }

  void limparCampos() {
    nome.clear();
    email.clear();
    idade.clear();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo Simples BD")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Entre com os dados:"),
              TextField(
                controller: nome,
                decoration: const InputDecoration(label: Text("Nome")),
              ),
              TextField(
                controller: email,
                decoration: const InputDecoration(label: Text("Email")),
              ),
              TextField(
                controller: idade,
                decoration: const InputDecoration(label: Text("Idade")),
              ),
              ElevatedButton(
                onPressed: () {
                  gravarDados(nome.text, email.text, int.parse(idade.text));
                  limparCampos();
                },
                child: const Text("Gravar Dados"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Listagem()),
                  );
                },
                child: const Text("Listar Dados"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}