import 'package:flutter/material.dart';

main() {
  runApp(atv1());
}
class atv1 extends StatelessWidget {
  void clicou() {
    print("teste");
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meu primeiro App"),
        ),
        body: Column(
          children: [
            Text("Aprendendo sobre Flutter"),
            Text("Aula CEFET G2"),
            Row(
              children: [
                ElevatedButton(onPressed: clicou, child: Text('Enviar')),
                ElevatedButton(onPressed: clicou, child: Text('Cancelar')),
                ElevatedButton(onPressed: clicou, child: Text('Salvar')),
              ],
            ),
            Column(
              children: [
                Text("Aprendendo"),
                Text("Programação"),
                Text("Flutter"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}