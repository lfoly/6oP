import 'package:flutter/material.dart';

class ExemploSnackbar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    mostrarMensagem() {
      SnackBar snackBar = SnackBar(
         backgroundColor: Colors.teal,
         duration: const Duration(seconds: 5),
         content: const Text("Exemplo de SnackBar"),
         action: SnackBarAction(label: "Fechar", onPressed: () {
            print("SnackBar pressionado");
         }),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: mostrarMensagem, 
          child: Text("Snack Bar")
        ),
      ),
    );
  }


  
}