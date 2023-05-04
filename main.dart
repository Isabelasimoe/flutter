import 'package:flutter/material.dart';

void main() {
  runApp(dever());
}

class dever extends StatefulWidget {
  @override
  State<dever> createState() => _deverState();
}

class _deverState extends State<dever> {
  var contador = 0;
  final perguntas = [    
    "Qual a sua cor favorita",    
    "Qual o seu animal favorito",    
    "Qual o seu carro favorito",    
    
    "Qual o seu signo favorito",  ];

  void clicou() {
    setState(() {
     contador = (contador + 1) % perguntas.length;
    });
    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu primeiro App"),
        ),
        body: Column(
          children: [
            Text(perguntas[contador]),
            ElevatedButton(onPressed: clicou, child: Text('Clique aqui')),
            ElevatedButton(onPressed: clicou, child: Text('Cancelar')),
            ElevatedButton(onPressed: clicou, child: Text('Salvar')),
          ],
        ),
      ),
    );
  }
}