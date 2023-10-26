import 'package:flutter/material.dart';

class DetalhesDaMeta extends StatefulWidget {
  const DetalhesDaMeta({super.key});

  @override
  State<DetalhesDaMeta> createState() => _detalhes_metaState();
}

class _detalhes_metaState extends State<DetalhesDaMeta> {
  @override
  Widget build(BuildContext context) {
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
                Text("Detalhes da Meta",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 50),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/escudo.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(height: 30),
                Text("Nível 5",
                    style: TextStyle(
                        color: Color(0xFFbbb6b5),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 10,
                  child: LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      color: Color(0xFFbbb6b5),
                      value: 0.5,
                      borderRadius: BorderRadius.circular(100)),
                ),
                SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 500,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/push_up.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  "Você deve fazer 15 exercícios para avançar de nível.",
                                  style: TextStyle(
                                      fontSize: 9.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 80),
                              //ESPAÇO PARA DIGITAR A QUANTIDADE QUE O USUÁRIO FEZ
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: "Quantidade que você fez",
                                  hintStyle: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                      width: 2.5,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 500,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/pull_up.png'),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(height: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  "Você deve perder 8 kg para avançar de nível.",
                                  style: TextStyle(
                                      fontSize: 9.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 15),
                              //ESPAÇO PARA DIGITAR A QUANTIDADE QUE O USUÁRIO PERDEU
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: "Quantidade que você perdeu",
                                  hintStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255)),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                      width: 2.5,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
