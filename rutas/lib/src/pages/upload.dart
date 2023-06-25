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
         title: Text('Deseas subir imagenes',
        style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'RobotoMono'),),
                backgroundColor: Color.fromARGB(255, 63, 2, 175),
                centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/gato.jpeg'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Seleccionar Imagen'),
            ),
          ],
        ),
      ),
    );
  }
}
