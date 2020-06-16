import 'package:flutter/material.dart';

class InicioPag extends StatelessWidget {

  final estiloTexto = new TextStyle(fontSize: 25);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        backgroundColor: Color(30),
        centerTitle: true,
        elevation: 1.00,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numeros de Click', style: estiloTexto),
          Text('$contador', style: estiloTexto),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.beach_access),
        onPressed: () {
         // contador++
          print("Hola Darwin");
        },
      ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
