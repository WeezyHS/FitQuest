import 'package:fitquest/pages/EditarPerfil.dart';
import 'package:fitquest/pages/detalhes_carreira.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Home extends StatefulWidget {
  final int barCount;
  final int flexCount;
  final int weight;
  final int expectedWeight;

  const Home({
    Key? key,
    required this.barCount,
    required this.flexCount,
    required this.weight,
    required this.expectedWeight
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  void editarPerfil() {
    Navigator.pushNamed(context, '/editarPerfil');
  }
  void _detalhes_carreira() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => detalhes_carreira(
          flexCount: widget.flexCount,
          barCount: widget.barCount,
          weight: widget.weight,
          expectedWeight: widget.expectedWeight,
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    int nextLevelBarCount = widget.barCount + 2;
    int nextLevelFlexCount = widget.flexCount + 2;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0B235C),
        body: Column(
          children: [
            Row(
              children: [
                    IconButton(onPressed: editarPerfil,
                        icon:
                        Icon(Icons.account_circle,
                            color: Colors.white,
                            size: 30.0)),
                    SizedBox(width: 80),
                    SvgPicture.asset('assets/images/logo.svg', height: 150),
                    SizedBox(width: 80),
                    IconButton(onPressed: null,
                        icon:
                        Icon(Icons.notifications,
                            color: Colors.white,
                            size: 30.0))
              ]
            ),
            Text("Carreira",
            style: TextStyle(color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            InkWell(
              onTap: _detalhes_carreira ,
              child: Container(
                width: 370,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Progresso",
                        style: TextStyle(color: Colors.white,
                        fontSize:17.0,
                        fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    Container(
                      width: 250,
                      child: LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        color: Color(0xFF0B235C),
                        value: 0.5,
                        borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Text("Metas",
                style: TextStyle(color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Flexões",
                          style: TextStyle(color: Colors.white,
                              fontSize:17.0,
                              fontWeight: FontWeight.bold)),

                      SizedBox(height: 15),
                      Container(
                        width: 100,
                        child: LinearProgressIndicator(
                            backgroundColor: Colors.white,
                            color: Color(0xFF0B235C),
                            value: 0.5,
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      SizedBox(height: 15),
                      Text("${widget.flexCount} de $nextLevelFlexCount",
                          style: TextStyle(color: Colors.white,
                              fontSize:12.0,
                              fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  width: 170,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Barras",
                          style: TextStyle(color: Colors.white,
                              fontSize:17.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      Container(
                        width: 100,
                        child: LinearProgressIndicator(
                            backgroundColor: Colors.white,
                            color: Color(0xFF0B235C),
                            value: 0.5,
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      SizedBox(height: 15),
                      Text("${widget.barCount} de $nextLevelBarCount",
                          style: TextStyle(color: Colors.white,
                              fontSize:12.0,
                              fontWeight: FontWeight.bold)
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Peso",
                          style: TextStyle(color: Colors.white,
                          fontSize:17.0,
                          fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      Container(
                        width: 100,
                        child: LinearProgressIndicator(
                            backgroundColor: Colors.white,
                            color: Color(0xFF0B235C),
                            value: 0.5,
                            borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      SizedBox(height: 15),
                  Text("${widget.weight}kgs até ${widget.expectedWeight}kgs",
                      style: TextStyle(color: Colors.white,
                      fontSize:12.0,
                      fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
