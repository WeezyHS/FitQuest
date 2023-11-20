import 'package:flutter/material.dart';

class detalhes_carreira extends StatefulWidget {
  final int flexCount;
  final int barCount;
  final int weight;
  final int expectedWeight;

  const detalhes_carreira({
    Key? key,
    required this.barCount,
    required this.flexCount,
    required this.weight,
    required this.expectedWeight,
  }) : super(key: key);

  @override
  State<detalhes_carreira> createState() => _detalhes_carreiraState();
}

class _detalhes_carreiraState extends State<detalhes_carreira> {

  void _progresso_flexao() {

    Navigator.pushNamed(context, '/progressoFlexao');
  }

  void _progresso_barra() {

    Navigator.pushNamed(context, '/progressoBarra');
  }

  void _progresso_peso() {

    Navigator.pushNamed(context, '/progressoPeso');
  }

  void _tutorial_flexao() {

    Navigator.pushNamed(context, '/tutorialFlexao');
  }

  void _tutorial_barra() {

    Navigator.pushNamed(context, '/tutorialBarra');
  }

  void _tutorial_peso() {

    Navigator.pushNamed(context, '/tutorialPeso');
  }

  @override
  Widget build(BuildContext context) {
    int nextLevelBarCount = widget.barCount + 2;
    int nextLevelFlexCount = widget.flexCount + 2;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0B235C),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  "Sua Carreira",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                /*Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/escudo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Nível 5",
                  style: TextStyle(
                    color: Color(0xFFbbb6b5),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 10,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    color: Color(0xFFbbb6b5),
                    value: 0.5,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),*/
                Text(
                  "Exercícios Físicos",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/push_up.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${widget.flexCount}/",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "$nextLevelFlexCount",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 2,
                              right: 2,
                              child: IconButton(
                                onPressed: () {
                                 _tutorial_flexao();
                                },
                                icon: Icon(Icons.info, color: Colors.white, size: 22.0),
                              ),
                            ),
                            Positioned(
                              bottom: 2,
                              left: 2,
                              child: IconButton(
                                onPressed: () {
                                  _progresso_flexao();
                                },
                                icon: Icon(Icons.graphic_eq_rounded, color: Colors.white, size: 22.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: _progresso_barra,
                      child: Container(
                        width: 180,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/pull_up.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${widget.barCount}/",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "${nextLevelBarCount}",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Positioned(
                              bottom: 2,
                              right: 2,
                              child: IconButton(
                                onPressed: () {
                                  _tutorial_barra();
                                },
                                icon: Icon(Icons.info, color: Colors.white, size: 22.0),
                              ),
                            ),
                            Positioned(
                              bottom: 2,
                              left: 2,
                              child: IconButton(
                                onPressed: () {
                                  _progresso_barra();
                                },
                                icon: Icon(Icons.graphic_eq_rounded, color: Colors.white, size: 22.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Text(
                  "Atributos Físicos",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: _progresso_peso,
                  child: Container(
                    width: 370,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/bar.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${widget.weight}/",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${widget.expectedWeight}",
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: 2,
                          right: 2,
                          child: IconButton(
                            onPressed: () {
                                _tutorial_peso();
                                },
                            icon: Icon(Icons.info, color: Colors.white, size: 22.0),
                          ),
                        ),
                        Positioned(
                          bottom: 2,
                          left: 2,
                          child: IconButton(
                            onPressed: () {
                              _progresso_peso();
                            },
                            icon: Icon(Icons.graphic_eq_rounded, color: Colors.white, size: 22.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
