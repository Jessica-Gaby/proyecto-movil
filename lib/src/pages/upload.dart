import 'package:flutter/material.dart';



class ImagePage extends StatefulWidget {
  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Comparte Tus Imagenes',
        style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'RobotoMono'),),
                backgroundColor: const Color.fromARGB(255, 11, 11, 11),
                centerTitle: true,
      ),
     body: Container(
      decoration: const BoxDecoration(
      gradient: LinearGradient(
      colors: <Color>[
        Color.fromARGB(255, 249, 248, 250),
        Color.fromARGB(255, 233, 133, 61)
      ],
      begin: Alignment.topRight,
    ),
  ),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('images/gato.jpeg'),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Acción a realizar cuando se presione el botón
          },
          child: const Text('Seleccionar Imagen'),
        ),
      ],
    ),
  ),
  ));
}
}

