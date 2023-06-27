import 'package:flutter/material.dart';

class LectorDeBarrasPage extends StatefulWidget {
  const LectorDeBarrasPage({super.key});

  @override
  State<LectorDeBarrasPage> createState() => _LectorDeBarrasPageState();
}

class _LectorDeBarrasPageState extends State<LectorDeBarrasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lector de Barras',
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'RobotoMono',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 249, 248, 250),
              Color.fromARGB(255, 233, 133, 61)
            ],
            begin: Alignment.topRight,
          ),
        ),
      ),
    );
  }
}
