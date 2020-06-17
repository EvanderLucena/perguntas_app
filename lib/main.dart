import 'package:flutter/material.dart';
main() => runApp(PerguntaApp());


class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  final perguntas = [
    'Qual é sua cor favorita?',
    'Qual é seu animal favorito?',
  ];

  void responder(){
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}
class PerguntaApp extends StatefulWidget{
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}
