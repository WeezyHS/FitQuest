import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CriarPerfil extends StatefulWidget {
  const CriarPerfil({Key? key}) : super(key: key);

  @override
  State<CriarPerfil> createState() => _CriarPerfilState();
}

class _CriarPerfilState extends State<CriarPerfil> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _expectedWeightController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _barController = TextEditingController();
  final TextEditingController _flexController = TextEditingController();

  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _heightController.addListener(_updateButtonState);
    _weightController.addListener(_updateButtonState);
    _expectedWeightController.addListener(_updateButtonState);
    _sexController.addListener(_updateButtonState);
    _barController.addListener(_updateButtonState);
    _flexController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    _expectedWeightController.dispose();
    _sexController.dispose();
    _barController.dispose();
    _flexController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {
      isButtonEnabled = _heightController.text.isNotEmpty &&
          _weightController.text.isNotEmpty &&
          _expectedWeightController.text.isNotEmpty &&
          _sexController.text.isNotEmpty &&
          _barController.text.isNotEmpty &&
          _flexController.text.isNotEmpty;
    });
  }

  void _login() {
    if (isButtonEnabled) {
      // Passa a contagem de barras e flexões para a tela Home.
      int barCount = int.parse(_barController.text);
      int flexCount = int.parse(_flexController.text);
      int weight = int.parse(_weightController.text);
      int expectedWeight = int.parse(_expectedWeightController.text);

      Navigator.pushNamed(
        context,
        '/home',
        arguments: {
          'barCount': barCount,
          'flexCount': flexCount,
          'weight': weight,
          'expectedWeight': expectedWeight

        },
      );
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
                "Crie seu Perfil",
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
                hintText: "Seu Nick:",
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
              //controller: _emailController,
              decoration: InputDecoration(
                hintText: "Idade:",
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
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _heightController,
              decoration: InputDecoration(
                hintText: "Altura:",
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
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _weightController,
              decoration: InputDecoration(
                hintText: "Peso atual (kg):",
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
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _expectedWeightController,
              decoration: InputDecoration(
                hintText: "Meta de peso (kg):",
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
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _sexController,
              decoration: InputDecoration(
                hintText: "Sexo:",
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
              controller: _barController,
              decoration: InputDecoration(
                hintText: "Quantidade de barras:",
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
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _flexController,
              decoration: InputDecoration(
                hintText: "Quantidade de flexões:",
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
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: isButtonEnabled ? _login : null,
                child: Text('Criar Perfil'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.grey; // Disable color
                      }
                      return Colors.redAccent; // Regular color
                    },
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
