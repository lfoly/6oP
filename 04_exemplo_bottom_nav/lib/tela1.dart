import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS06yGgD-ziCkZSxtof2wbjMUqzW5DLLDOaR_4CtJtMAA&s=10",
            width: 300,
            height: 300,
            ),
          Text("Meu local de trabalho"),
        ],
      ),),
    );
  }
}