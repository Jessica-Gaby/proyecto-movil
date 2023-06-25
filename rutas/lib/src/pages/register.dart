import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _idNumberController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _GeneroController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Registro',
                style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'RobotoMono'),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 63, 2, 175)),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:<Color>[ 
              Color.fromARGB(255, 53, 10, 103),
              Color.fromARGB(0, 69, 144, 235)],
              begin: Alignment.topRight
            )),
        child: ListView(
          
          children:<Widget> [
            Center(
              child: Padding(padding: EdgeInsets.all(16.0),
              child: Column(
            children: [
              CircleAvatar(
                      radius: 100.0,
                      backgroundColor: Colors.amberAccent,
                      backgroundImage: AssetImage('images/descarga.jpg'),
                    ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  helperText: '',
                ),
              ),
              TextField(
                controller: _lastNameController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Apellidos',
                  hintText: 'Ingrese sus apellidos',
                  helperText: '',
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: 'Correo electrónico',
                  hintText: 'Ingrese su correo electrónico',
                  helperText: '',
                ),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Contraseña',
                  hintText: 'Ingrese su contraseña',
                  helperText: '',
                ),
                obscureText: true,
              ),
              TextField(
                controller: _idNumberController,
                decoration: InputDecoration(
                  icon: Icon(Icons.credit_card),
                  labelText: 'Cédula',
                  hintText: 'Ingrese su número de cédula',
                  helperText: '',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _GeneroController,
                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: 'Genero',
                  hintText: 'Ingrese su Genero',
                  helperText: '',
                ),
              ),
             
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  labelText: 'Edad',
                  hintText: 'Ingrese su edad',
                  helperText: '',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16.0),
              SizedBox(
                 width:130.0,
                 height:30.0,
                child: ElevatedButton(
                onPressed: () {
                  
                  String name = _nameController.text;
                  String lastName = _lastNameController.text;
                  String email = _emailController.text;
                  String password = _passwordController.text;
                  String idNumber = _idNumberController.text;
                  String genero = _GeneroController.text;
                  int age = int.tryParse(_ageController.text) ?? 0;

                  Navigator.pushNamed(context, '/Login');
                  
      
                  print('Nombre: $name');
                  print('Apellidos: $lastName');
                  print('Correo electrónico: $email');
                  print('Contraseña: $password');
                  print('Cédula: $idNumber');
                  print('Genero:$genero');
                  print('Edad: $age');
                },
                child: Text('Registrarse'),
              ),
              ),
              
              Row(
                      children: [
                        Divider(
                          height: 20.0,
                        ),
                        SizedBox(
                        width:130.0,
                        height:30.0,
                        child: ElevatedButton.icon(
                   onPressed:(){
                         Navigator.popAndPushNamed(context, '/Home');},
                         icon: Icon(Icons.arrow_back ),
                         label: Text("Regresar"),
                        ),

                  ),
                      ],
                    ),
            ],
          ),
              ),
      
               
            )
          ],
          
          
        ),
      ),
    );
  }
}