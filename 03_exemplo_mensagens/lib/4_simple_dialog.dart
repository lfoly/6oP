import 'package:flutter/material.dart';

class ExemploSimpleDialog extends StatefulWidget {
  const new({super.key});

  @override
  State<ExemploSimpleDialog> createState() => ExemploSimpleDialogState();
}

class ExemploSimpleDialogState extends State<ExemploSimpleDialog> {
  var opcaoEscolhida = "";

  @override
  Widget build(BuildContext context) {
    
    atualizarOpcao(String valor) {
      setState(() {
        opcaoEscolhida = valor;
      });
    }

    Future mostrarMensagem() async {
      opcaoEscolhida = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("Escolha uma opção:"),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "opcao1");
                },
                child: const Text("Opção 1"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "opcao2");
                },
                child: const Text("Opção 2"),
              ),
            ],
          );
        },
      );
      atualizarOpcao(opcaoEscolhida);
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: mostrarMensagem,
              child: Text("Alert Dialog"),
            ),
            Text("Opção Escolhida: $opcaoEscolhida"),
          ],
        ),
      ),
    );
  }
}
