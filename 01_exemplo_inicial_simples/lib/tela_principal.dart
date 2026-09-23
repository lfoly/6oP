import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Inicial Simples"),
        //backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text("Olá Mundo!", style: TextStyle(fontSize: 24),),
            ),
          ElevatedButton(onPressed: () {
            var snackBar = SnackBar(content: Text("Exemplo de SnackBar"));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, child: Text("Clique-me")),  
        ],
      ),
    );
  }
}
