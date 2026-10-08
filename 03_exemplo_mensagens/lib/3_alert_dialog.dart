import 'package:flutter/material.dart';

class ExemploAlertDialog extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    mostrarMensagem() {
      AlertDialog alertDialog = AlertDialog(
        title: const Text("Um Alert Dialog"),
        content: SizedBox(
          height: 50,
          child: const Center(child: Text("Exemplo de Alert Dialog"))
          ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            }, 
            child: const Text("Ok, ciente")
          ),
        ],
      );

      return showDialog(
        context: context, 
        barrierDismissible: false,
        builder: (BuildContext context) {
          return alertDialog;
      });
    }

  return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: mostrarMensagem, 
          child: Text("Alert Dialog")
        ),
      ),
    );
  }
}