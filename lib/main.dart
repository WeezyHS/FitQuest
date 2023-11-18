import 'package:fitquest/pages/Cadastro.dart';
import 'package:fitquest/pages/Criar_perfil.dart';
import 'package:fitquest/pages/Criar_perfil2.dart';
import 'package:fitquest/pages/TelaEdicaoDePerfil.dart';
import 'package:fitquest/pages/home.dart';
import 'package:fitquest/pages/login.dart';
import 'package:fitquest/pages/detalhes_carreira.dart';
import 'package:fitquest/pages/progresso_flexao.dart';


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
        '/home': (context) {
            final args = ModalRoute.of(context)!.settings.arguments as Map<String, int>;
            return Home(
              barCount: args['barCount']!,
              flexCount: args['flexCount']!,
            );
      },
        '/Home' : (context) => Home(barCount: 0, flexCount: 0),
        '/detalhesCarreira' : (context) => detalhes_carreira(),
        '/progressoFlexao' : (context) => progresso_flexao(),
        '/criarPerfil' : (context) => CriarPerfil(),
        '/Criar_perfil2': (context) => CriarPerfil2()

      } ,
      home: Login(),
    );
  }
}
