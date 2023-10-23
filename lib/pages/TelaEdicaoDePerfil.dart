import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class TelaEditorDePerfil extends StatefulWidget {
  @override
  _EstadoTelaEditorDePerfil createState() => _EstadoTelaEditorDePerfil();
}

class _EstadoTelaEditorDePerfil extends State<TelaEditorDePerfil> {
  String nomeSobrenome = "";
  String nick = "";
  double peso = 0.0;
  int idade = 0;
  double altura = 0.0;
  String sexo = "";
  int metaBarrasConsecutivas = 0;
  int metaFlexoesConsecutivas = 0;
  List<File> _images = [];
  double _gridHeight = 400;

  Future<void> _selecionarImagem() async {
    final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _images.add(File(pickedFile.path));
      } else {
        print('Nenhuma imagem selecionada.');
      }
    });
  }

  InputDecoration inputDecoration = InputDecoration(
    labelStyle: TextStyle(color: Colors.white),
    hintStyle: TextStyle(color: Colors.white),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white)),
  );

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
                          backgroundImage: AssetImage(
                              'seu_caminho_da_imagem.jpg'),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(labelText: 'Nome e Sobrenome'),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    nomeSobrenome = value;
                  });
                },
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(labelText: 'Apelido'),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    nick = value;
                  });
                },
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(labelText: 'Peso (kg)'),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    peso = double.parse(value);
                  });
                },
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(labelText: 'Idade'),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    idade = int.parse(value);
                  });
                },
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(labelText: 'Altura (cm)'),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    altura = double.parse(value);
                  });
                },
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(labelText: 'Sexo'),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    sexo = value;
                  });
                },
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(labelText: 'Meta de Barras Consecutivas'),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    metaBarrasConsecutivas = int.parse(value);
                  });
                },
              ),
              TextFormField(
                decoration: inputDecoration.copyWith(labelText: 'Meta de Flexões Consecutivas'),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    metaFlexoesConsecutivas = int.parse(value);
                  });
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Perfil atualizado com sucesso!')),
                  );
                },
                child: Text('Atualizar Perfil'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _selecionarImagem,
                child: Text('Adicionar Foto'),
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
                    return Image.file(_images[index], fit: BoxFit.cover);
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