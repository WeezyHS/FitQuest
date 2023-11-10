import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class tutorial_peso extends StatelessWidget {
  const tutorial_peso({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0B235C),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("Peso", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30.0
              )),
              SizedBox(height: 50),
              Text("Descrição", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: 20.0
              )),
              SizedBox(height: 30),
              Container(
                width: 350,
                child: Center(
                  child: Text("Para perder peso de forma saudável, é essencial combinar uma alimentação equilibrada com atividade física regular. Priorize refeições ricas em vegetais, proteínas magras e evite excesso de açúcar e gorduras. Mantenha-se hidratado e focado em seus exercícios!", textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0
                      )),
                ),
              ),
              SizedBox(height: 50),
              Text("Tutorial", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                  fontSize: 20.0
              )),
              SizedBox(height: 30),
              YoutubePlayerBuilder(
                  player: YoutubePlayer(
                    controller: YoutubePlayerController(
                        initialVideoId: "U6c-D2vEet4",
                        flags: YoutubePlayerFlags(
                          autoPlay: false,
                          mute: false,
                        )
                    ),
                    width: 350,
                  ),
                  builder: (context, player) {
                    return Column(
                      children: <Widget>[
                        player
                      ],
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}







