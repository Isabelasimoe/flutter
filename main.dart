import 'package:flutter/material.dart';
import './inicio.dart';

void main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aula Componentes'),
        ),
        body: Inicio(),
      ),
    );
  }
}