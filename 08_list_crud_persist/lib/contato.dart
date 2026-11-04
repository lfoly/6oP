import 'dart:convert';

class Contato {

  String? nome;
  String? email;
  String? telefone;

  Contato({this.nome, this.email, this.telefone});

  Map<String, dynamic> toJson() {
    return {"nome": nome, "email": email, "telefone": telefone};
  }

  factory Contato.fromJson(Map<String, dynamic> json) {
    return Contato(
      nome: json["nome"],
      email: json["email"],
      telefone: json["telefone"],
    );
  }

    @override
  String toString() {
    return jsonEncode(toJson());
  }

}