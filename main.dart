import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.purple,
                  padding: const EdgeInsets.all(24.0), // Aumente o valor para expandir a tabela
                  child: const PerfilAluno(
                    image: 'lib/fotos/centro.png',
                    name: 'Isabela',
                    registration: '01',
                    school: 'Roberto Carneiro',
                    year: '3°',
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(24.0), // Aumente o valor para expandir a tabela
                  child: const PerfilAluno(
                    image: 'lib/fotos/capa-cefet-2.jpg',
                    name: 'Sophia',
                    registration: '02',
                    school: 'CEFET-MG',
                    year: '3°',
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(24.0), // Aumente o valor para expandir a tabela
                  child: const PerfilAluno(
                    image: 'lib/fotos/071.jpg',
                    name: 'Júlia',
                    registration: '03',
                    school: 'CSA',
                    year: '3°',
                  ),
                ),
                const SizedBox(height: 8.0),
                Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.all(24.0), // Aumente o valor para expandir a tabela
                  child: const PerfilAluno(
                    image: 'lib/fotos/integral.png',
                    name: 'Clara',
                    registration: '04',
                    school: 'Integral',
                    year: '3°',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PerfilAluno extends StatelessWidget {
  final String image;
  final String name;
  final String registration;
  final String school;
  final String year;

  const PerfilAluno({
    Key? key,
    required this.image,
    required this.name,
    required this.registration,
    required this.school,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 80.0,
          ),
          const SizedBox(height: 24.0),
          Text(
            'Nome: ' + name,
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 12.0),
          Text(
            'Matrícula: ' + registration,
            style: const TextStyle(fontSize: 18.0),
          ),
          const SizedBox(height: 12.0),
          Text(
            'Escola: ' + school,
            style: const TextStyle(fontSize: 18.0),
          ),
          const SizedBox(height: 12.0),
          Text(
            'Ano: ' + year,
            style: const TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}