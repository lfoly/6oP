import 'dart:convert';
import 'contato.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContatoController {
  static List<Contato> lista = [];

  static Future<void> incluir(Contato c) async {
    lista.add(c);
    await salvar();
  }

  static Future<void> editar(int index, Contato c) async {
    lista[index] = c;
    await salvar();
  }

  static Future<void> excluir(Contato c) async {
    lista.remove(c);
    await salvar();
  }

  static Future<void> salvar() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> dados = lista.map((c) => jsonEncode(c.toJson())).toList();

    await prefs.setStringList("contatos", dados);
  }

  static Future<void> carregar() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String>? dados = prefs.getStringList("contatos");

    if (dados != null) {
      lista = dados.map((item) {
        return Contato.fromJson(jsonDecode(item));
      }).toList();
    }
  }
}
