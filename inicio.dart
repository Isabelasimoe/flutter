
import 'package:flutter/material.dart';
import './questionario.dart';

class Inicio extends StatelessWidget {
  void iniciarQuestionario(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Questionario()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Bem-vindo ao APP!',
          style: TextStyle(fontSize: 24),
        ),
        ElevatedButton(
          onPressed: () => iniciarQuestionario(context),
          child: Text('Iniciar Questionário'),
        ),
      ],
    );
  }
}