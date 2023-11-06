import 'package:fitquest/pages/Cadastro.dart';
import 'package:fitquest/pages/TelaEdicaoDePerfil.dart';
import 'package:fitquest/pages/home.dart';
import 'package:fitquest/pages/login.dart';
import 'package:fitquest/pages/detalhes_carreira.dart';
import 'package:fitquest/pages/progresso_flexao.dart';
import 'package:fitquest/pages/DetalhesDaMeta.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/cadastro': (context) => Cadastro(),
        '/home': (context) => Home(),
        '/telaEditor': (context) => TelaEditorDePerfil(),
        '/detalhesCarreira': (context) => detalhes_carreira(),
        '/progressoFlexao': (context) => progresso_flexao()
      },
      home: Login(),
    );
  }
}
