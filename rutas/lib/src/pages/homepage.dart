import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rutas/src/pages/navbar.dart';
import 'package:rutas/src/widgets/icon_container.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePages extends StatefulWidget {
  
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: nav(),
      appBar: AppBar(
        
        title: Text('Bienvenida a nuesta Tienda virtual :)',
        style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'RobotoMono'),),
                backgroundColor: Color.fromARGB(255, 63, 2, 175),
                centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:<Color>[ 
              Color.fromARGB(255, 53, 10, 103),
              Color.fromARGB(0, 69, 144, 235)],
              begin: Alignment.topRight
            )),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.amberAccent,
                    backgroundImage: AssetImage('images/logo.jpg'),
                  ),
            SizedBox(height: 20),
            Text(
              'Bienvenidos a la Tienda Virtual',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CarouselSlider(
              items: [
                  
                //1st Image of Slider
                Container(
                  width:200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("images/collar2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  width:200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image:  AssetImage('images/collar1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //3rd Image of Slider
                Container(
                  width:200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image:  AssetImage('images/comida2.png'),
                     
                    
                    ),
                  ),
                ),
                  
                //4th Image of Slider
                Container(
                  width:200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image:  AssetImage('images/collar2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //5th Image of Slider
                Container(
                  width:200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image:  AssetImage('images/comida3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
  
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                viewportFraction: 0.8,
              ),
          ),
            
            Divider(
                    height: 20.0,
                  ),
                  SizedBox(
                    width:130.0,
                    height:30.0,
                    child: ElevatedButton(
                   onPressed:(){
                     Navigator.pushNamed(context, '/Login');},
                     
                     child: Text("Ingresar"),
                    ),

                  ),
      
                    Divider(
                      height: 20.0,
                    ),

                    SizedBox(
                    width:130.0,
                    height:30.0,
                    child: ElevatedButton(
                   onPressed:(){
                     Navigator.pushNamed(context, '/Register');},
                     child: Text("Registrarte"),
                    ),

                  ),
                    
          ],
        ),
      ),
    );
  }
}
