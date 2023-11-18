import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class CriarPerfil2 extends StatefulWidget {
  const CriarPerfil2({Key? key}) : super(key: key);

  @override
  State<CriarPerfil2> createState() => _CriarPerfilState();
}


class _CriarPerfilState extends State<CriarPerfil2> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _barController = TextEditingController();
  final TextEditingController _flexController = TextEditingController();


  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _heightController.addListener(_updateButtonState);
    _weightController.addListener(_updateButtonState);
    _sexController.addListener(_updateButtonState);
    _barController.addListener(_updateButtonState);
    _flexController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _heightController.dispose();
    _weightController.dispose();
    _sexController.dispose();
    _barController.dispose();
    _flexController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {
      isButtonEnabled = _heightController.text.isNotEmpty &&
          _weightController.text.isNotEmpty &&
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

      Navigator.pushNamed(
        context,
        '/home',
        arguments: {
          'barCount': barCount,
          'flexCount': flexCount,
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

            SizedBox(height: 50),
            TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Nome e Sobrenome:",
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
                hintText: "Apelido:",
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
                hintText: "Peso (kg):",
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
              controller: _sexController,
              decoration: InputDecoration(
                hintText: "Altura (cm):",
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
                hintText: "Quantidade de barras Consecutivas:",
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
                hintText: "Quantidade de flexões Consecutivas:",
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
