import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("cumuruxatiba.jpeg",
            width: 300,
            height: 300,
            ),
          Text("Meu local de descanso"),
        ],
      ),
      ),
    );
  }
}
