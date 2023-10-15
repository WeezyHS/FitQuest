import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _login() {
    Navigator.pushNamed(context, '/telaEdicao');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0B235C),
        body: Column(
          children: [
            Row(
              children: [
                    IconButton(onPressed: _login,
                        icon:
                        Icon(Icons.account_circle, color: Colors.white, size: 30.0), style: IconButton.styleFrom(backgroundColor: Colors.redAccent)),
                    SizedBox(width: 80),
                    SvgPicture.asset('assets/images/logo.svg', height: 150),
                    SizedBox(width: 80),
                    IconButton(onPressed: null,
                        icon:
                        Icon(Icons.notifications, color: Colors.white, size: 30.0))
              ],
            )
          ],
        ),
      ),
    );
  }
}
