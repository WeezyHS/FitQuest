import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateButtonState);
    _passwordController.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    final email = _emailController.text;
    final password = _passwordController.text;

    setState(() {
      _isButtonEnabled = email.contains("@gmail.com") |
                         email.contains("@rede.ulbra.br") |
                         email.contains("@outlook.com") |
                         email.contains("@yahoo.com.br") && password.length >= 8;

    });
  }

  void _login() {

    if (_isButtonEnabled) {
      Navigator.pushNamed(context, '/Home');
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0B235C),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SvgPicture.asset('assets/images/logo.svg', height: 350),
                Text(
                  "Bem vindo de Volta!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 350,
                  child: TextFormField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "email",
                      hintStyle: TextStyle(color: Colors.blueGrey),
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
                ),
                SizedBox(height: 30),
                Container(
                  width: 350,
                  child: TextFormField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "senha",
                      hintStyle: TextStyle(color: Colors.blueGrey),
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
                ),
                SizedBox(height: 50),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: _isButtonEnabled ? Colors.redAccent : Colors.blueGrey,
                    padding: EdgeInsets.all(20),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: _isButtonEnabled ? _login : null,

                  child: Text("Entrar", style: TextStyle(color: Colors.white)),
                ),

                SizedBox(height: 20),

                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cadastro');
                  },
                  child: Text(
                    "Não possui cadastro? Clique aqui",
                    style: TextStyle(
                      color: Colors.white,
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
