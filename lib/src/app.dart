import 'package:contador/src/paginas/contador_pag.dart';
import 'package:flutter/material.dart';
// import 'package:contador/src/paginas/inicio_pag.dart';

class MiApp extends StatelessWidget {

  @override
  Widget build( context ){
    
    return MaterialApp(
     debugShowCheckedModeBanner: false, // desaparece el banner que dice debug
      home:Center(
       // child: InicioPag(),
        child: ContadorPag(),
    ),
    );
  }
}