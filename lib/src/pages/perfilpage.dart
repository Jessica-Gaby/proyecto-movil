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
          'Mi Perfil',
          style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:<Color>[ 
              Color.fromARGB(255, 249, 248, 250),
              Color.fromARGB(255, 233, 133, 61)],
              begin: Alignment.topRight
            )),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 10.0,
            ),
            
            CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.amberAccent,
                      backgroundImage: AssetImage('images/logo.jpg'),
                    ),
            Text(
              '"Pet Center" ',
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
                  fontSize: 25, color: Color.fromARGB(255, 11, 11, 11)),
            ),
             Divider(
                    height: 10.0,
                  ),
            Text(
              'Erick Guevara',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 249, 247, 247)),
            ),
             Divider(
                    height: 10.0,
                  ), // Espacio entre el texto y el botón
            Text(
              'Correo:',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 16, 16, 16)),
            ),
             Divider(
                    height: 10.0,
                  ),
            Text(
              'ead.guevara@yavirac.edu.ec',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 249, 248, 248)),
            ),
             Divider(
                    height: 20.0,
                  ),// Espacio entre el texto y el botó         // Espacio entre el texto y el botón
            Text(
              'Edad :',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 9, 9, 9)),
            ),// Espacio entre el texto y el botón
            Divider(
                    height: 10.0,
                  ),
                  Text(
              '21',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 213, 210, 210)),
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