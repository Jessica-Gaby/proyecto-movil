import 'package:flutter/material.dart';
import 'package:rutas/src/pages/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Nav(),
      appBar: AppBar(
        title: Text(
          'Pet Center - Tu Tienda Virtual',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
              Color.fromARGB(255, 233, 133, 61),
            ],
            begin: Alignment.topRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.amberAccent,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Bienvenid@s',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CarouselSlider(
              items: [
                Container(
                  width: 200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('images/collar2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('images/collar1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('images/comida2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('images/collar2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage('images/comida3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
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
              width: 130.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Login');
                },
                child: Text("Ingresar"),
              ),
            ),
            Divider(
              height: 20.0,
            ),
            SizedBox(
              width: 130.0,
              height: 30.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Register');
                },
                child: Text("Registrarte"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
