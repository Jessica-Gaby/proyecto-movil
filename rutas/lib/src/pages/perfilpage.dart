import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cuenta',
          style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 63, 2, 175),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:<Color>[ 
              Color.fromARGB(255, 53, 10, 103),
              Color.fromARGB(0, 69, 144, 235)],
              begin: Alignment.topRight
            )),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Perfil',
              style: const TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.amberAccent,
                      backgroundImage: AssetImage('images/logo.jpg'),
                    ),
            Text(
              'Bienvenido a tu perfil :',
              style: const TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
             Divider(
                    height: 10.0,
                  ),
            Text(
              'Usuario',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 13, 248, 111)),
            ),
             Divider(
                    height: 10.0,
                  ),
            Text(
              'Erick Guevara',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 0, 0, 0)),
            ),
             Divider(
                    height: 10.0,
                  ), // Espacio entre el texto y el botón
            Text(
              'Correo:',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 238, 40, 40)),
            ),
             Divider(
                    height: 10.0,
                  ),
            Text(
              'ead.guevara@yavirac.edu.ec',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 0, 0, 0)),
            ),
             Divider(
                    height: 20.0,
                  ),// Espacio entre el texto y el botó         // Espacio entre el texto y el botón
            Text(
              'Edad :',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 35, 209, 240)),
            ),// Espacio entre el texto y el botón
            Divider(
                    height: 10.0,
                  ),
                  Text(
              '21',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Divider(
                    height: 10.0,
                  ),
            ElevatedButton(
              onPressed:(){
                Navigator.popAndPushNamed(context, '/Home');},
                child:Text ('Vuelve a casa'),
             ),
            


          ],
        ),
      ),
    )
    );
  }
}