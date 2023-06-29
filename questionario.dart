import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatefulWidget {
  @override
  _QuestionarioState createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  var perguntaAtual = 0;

  final List<Map<String, Object>> questionario = [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'respostas': ['Branco', 'Rosa', 'Preto', 'Lilás', 'Marrom']
    },
    {
      'pergunta': 'Qual é seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Jabuti', 'Hamster']
    },
    {
      'pergunta': 'Qual sua linguagem favorita?',
      'respostas': ['C++', 'Java', 'Python']
    },
  ];

  void responder() {
    setState(() {
      perguntaAtual++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário'),
      ),
      body: perguntaAtual < questionario.length
          ? Column(
              children: [
                Questao(questionario[perguntaAtual]['pergunta'].toString()),
                ...((questionario[perguntaAtual]['respostas'] as List<String>)
                    .map((resposta) {
                  return Resposta(responder, resposta);
                }).toList()),
              ],
            )
          : Center(
              child: Text(
                'Terminou!',
                style: TextStyle(fontSize: 24),
              ),
            ),
    );
  }
}