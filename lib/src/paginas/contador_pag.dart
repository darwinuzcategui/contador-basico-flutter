import 'package:flutter/material.dart';


class ContadorPag extends StatefulWidget {
  
  @override
  createState() => _ContadorPagState();
/*
  createState() {
    return _ContadorPagState();
  }
*/



}

class _ContadorPagState extends State<ContadorPag> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  int  _contador = 0;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFull Widget'),
        backgroundColor: Color(30),
        centerTitle: true,
        elevation: 1.00,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Numeros de Click', style: _estiloTexto),
          Text('$_contador', style: _estiloTexto),
        ],
      )),
      floatingActionButton: _crearBotones()
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: 
    <Widget>[
      SizedBox(width: 50.0),
       FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _resertiar),
       Expanded(child: SizedBox()),
       FloatingActionButton( child: Icon(Icons.remove), onPressed: _restar),
       SizedBox(width: 15.0),
       FloatingActionButton( child: Icon(Icons.add), onPressed: _sumar),
    ],
    
    );
    
   
     
  }

  void _sumar(){
   
    setState(() => _contador++);
  }

  void _restar(){
   
   if(_contador>0) {
     setState(() => _contador--);
   }
    
  }

  void _resertiar(){
   if(_contador>0) {
     setState(() => _contador=0);
   }
  }

}
 