import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordController2 = TextEditingController();

  bool isButtonEnabled = false ;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateButtonState);
    _passwordController.addListener(_updateButtonState);
    _passwordController2.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    final email = _emailController.text;
    final password = _passwordController.text;
    final password2 = _passwordController2.text;

    setState(() {
      isButtonEnabled = email.contains("@gmail.com") |
      email.contains("@rede.ulbra.br") |
      email.contains("@outlook.com") |
      email.contains("@yahoo.com.brA") && password.length >= 8
          && password == password2;
    });
  }

    void _login() {

      if (isButtonEnabled) {
        Navigator.pushNamed(context, '/criarPerfil');
      }

    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFF0B235C),
          body: ListView(
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              SvgPicture.asset('assets/images/logo.svg', height: 350),
              Center(
                child: Text(
                  "Olá!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(height: 50),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Nome completo:",
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
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(color: Colors.white),
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email:",
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
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Senha:",
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
              SizedBox(height: 16),
              TextFormField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                controller: _passwordController2,
                decoration: InputDecoration(
                  hintText: "Confirmar senha:",
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
              SizedBox(height: 32),
              Center(
                child:

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: isButtonEnabled ? Colors.redAccent : Colors.blueGrey,
                    padding: EdgeInsets.all(20),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: isButtonEnabled ? _login : null,
                  child: Text("Entrar", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }


