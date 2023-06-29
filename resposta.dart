import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final Function() aoResponder;
  final String texto;

  Resposta(this.aoResponder, this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: ElevatedButton(
        onPressed: aoResponder,
        child: Text(texto),
      ),
    );
  }
}