import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class tutorial_flexao extends StatelessWidget {
  const tutorial_flexao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0B235C),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("Flexão", style: TextStyle(
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
                  child: Text("Levante e abaixe o corpo com os braços, mantendo-o reto. Este exercício trabalha os músculos do peito, ombros, tríceps e costas.", textAlign: TextAlign.justify,
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
                        initialVideoId: "R08gYyypGto",
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







