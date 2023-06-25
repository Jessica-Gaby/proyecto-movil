import 'package:flutter/material.dart';

class OtraPage extends StatefulWidget {
  const OtraPage({super.key});

  @override
  State<OtraPage> createState() => _OtraPageState();
}

class _OtraPageState extends State<OtraPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:<Color>[ 
              Color.fromARGB(255, 101, 10, 103),
              Color.fromARGB(0, 69, 144, 235)],
              begin: Alignment.topCenter
            )
          ),
          child: ElevatedButton(
            onPressed:(){
             Navigator.pushNamed(context, '/Servicios');},
             child:Text ('Ingresar a los servicios'),
             ),
          
        ),
        //Insertar Log
      ),
    );
  }
}