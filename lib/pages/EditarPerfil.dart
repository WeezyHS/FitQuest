import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _CriarPerfilState();
}
class ImageData {
  final File imageFile;
  final DateTime addedDate;

  ImageData(this.imageFile, this.addedDate);
}
class _CriarPerfilState extends State<EditProfile> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _sexController = TextEditingController();
  final TextEditingController _barController = TextEditingController();
  final TextEditingController _flexController = TextEditingController();

  List<ImageData> _images = [];
  double _gridHeight = 100;

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
  Future<void> _selecionarImagem() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _images.add(ImageData(File(pickedFile.path), DateTime.now()));
        _images.sort((a, b) => b.addedDate.compareTo(a.addedDate));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0B235C),
        appBar: AppBar(
          title: Text('Editar Perfil'),
          backgroundColor: Colors.redAccent,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('seu_caminho_da_imagem.jpg'),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.white,
                              iconSize: 24.0,
                              onPressed: () {
                                _selecionarImagem();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            SizedBox(height: 16),

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
            child: Text('Atualizar Perfil'),
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
        SizedBox(height: 16.0),  // Certifique-se de que este SizedBox está fora do ElevatedButton

        ElevatedButton(
          onPressed: _selecionarImagem,
          child: Text('Adicionar Foto da câmera'),
          style: ElevatedButton.styleFrom(primary: Colors.redAccent),
        ),

        SizedBox(height: 16.0),
              Container(
                height: _gridHeight,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: _images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text(
                          "${_images[index].addedDate.day}/${_images[index].addedDate.month}/${_images[index].addedDate.year}",
                          style: TextStyle(color: Colors.white),
                        ),
                        Expanded(
                          child: Image.file(_images[index].imageFile, fit: BoxFit.cover),
                        ),
                      ],
                    );
                  },
                ),
              ),
          ],
        ),
      ),
      ),
    );
  }
}
