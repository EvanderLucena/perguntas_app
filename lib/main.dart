import 'package:flutter/material.dart';
main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget{
  final perguntas = [
    'Qual é sua cor favorita?',
    'Qual é seu animal favorito?',
  ];
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}