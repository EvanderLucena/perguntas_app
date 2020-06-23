import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 8},
        {'texto': 'Vermelho', 'pontuacao': 10},
        {'texto': 'Verde', 'pontuacao': 5},
        {'texto': 'Branco', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 7},
        {'texto': 'Cobra', 'pontuacao': 3},
        {'texto': 'Elefante', 'pontuacao': 1},
        {'texto': 'Leão', 'pontuacao': 10},
      ],
    },
    {
      'texto': 'Qual é seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'pontuacao': 10},
        {'texto': 'João', 'pontuacao': 1},
        {'texto': 'Leo', 'pontuacao': 7},
        {'texto': 'Pedro', 'pontuacao': 6},
      ],
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }
  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quantoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() => _PerguntaAppState();
}
