import 'package:flutter/material.dart';
import 'formulario.dart';
import 'contato_controller.dart';

class Principal extends StatefulWidget {
  const new({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplo CRUD')),
      body: _construirLista(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Formulario()),
          ).then((_) {
            setState(() {});
           });
        },
        tooltip: 'Adicionar Contato',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _construirLista() {
    if (ContatoController.lista.isNotEmpty) {
      return ListView.builder(
        itemCount: ContatoController.lista.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),      
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              title: Text(ContatoController.lista[index].nome!),
              subtitle: Text(ContatoController.lista[index].email!),
              trailing: Text(ContatoController.lista[index].telefone!),
            ),
          );
        }
      );
    } else {
      return const Center(child: Text("Nenhum Contato cadastrado"));
    }
  }
}