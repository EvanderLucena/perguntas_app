import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
main() => runApp(PerguntaApp());


class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
  }
  @override
  Widget build(BuildContext context){
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual é seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
           ...respostas.map((t) => Resposta(t, _responder)).toList(),
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
