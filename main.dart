import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ButtonGenerator(),
  ));
}

class ButtonGenerator extends StatefulWidget {
  @override
  _ButtonGeneratorState createState() => _ButtonGeneratorState();
}

class _ButtonGeneratorState extends State<ButtonGenerator> {
  List<Widget> _buttonList = [];
  String _buttonText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerador de Botões'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (text) {
                setState(() {
                  _buttonText = text;
                });
                print(_buttonText);
              },
            ),
            ElevatedButton(
              child: Text('Gerar botão'),
              onPressed: () {
                setState(() {
                  _buttonList.add(ElevatedButton(
                    child: Text(_buttonText),
                    onPressed: () {
                      print('Botão gerado dinamicamente!');
                    },
                  ));
                });
              },
            ),
            SizedBox(height: 14.0),
            Column(
              children: _buttonList,
            ),
          ],
        ),
      ),
    );
  }
}
