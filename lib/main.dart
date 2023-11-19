import 'package:fitquest/pages/Cadastro.dart';
import 'package:fitquest/pages/Criar_perfil.dart';
import 'package:fitquest/pages/EditarPerfil.dart';
import 'package:fitquest/pages/home.dart';
import 'package:fitquest/pages/login.dart';
import 'package:fitquest/pages/detalhes_carreira.dart';
import 'package:fitquest/pages/progresso_flexao.dart';
import 'package:fitquest/pages/tutorial_barra.dart';
import 'package:fitquest/pages/tutorial_flexao.dart';
import 'package:fitquest/pages/tutorial_peso.dart';


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
              weight: args['weight']!,
              expectedWeight: args['expectedWeight']!,
            );
      },
        '/Home' : (context) => Home(barCount: 0, flexCount: 0, weight: 0, expectedWeight: 0),
        '/detalhesCarreira' : (context) => detalhes_carreira(flexCount: 0, barCount: 0),
        '/progressoFlexao' : (context) => progresso_flexao(),
        '/criarPerfil' : (context) => CriarPerfil(),
        '/editarPerfil': (context) => EditProfile(),
        '/tutorialFlexao' : (context) => tutorial_flexao(),
        '/tutorialBarra' : (context) => tutorial_barra(),
        '/tutorialPeso' : (context) => tutorial_peso()

      } ,
      home: Login(),
    );
  }
}
