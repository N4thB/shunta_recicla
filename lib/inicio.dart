import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(ShuntaRecicla());
}

class ShuntaRecicla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFFFD7B5),
      child: Image.asset('assets/images/shuntaReciclaSplashScreenLogo.png'),
      //FlutterLogo(size:MediaQuery.of(context).size.height)
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/LogoNegro.png', scale: 12),
            const SizedBox(width: 10),
            const Text(
              'Shunta Recicla',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0XFFFF9248),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/carbonFootprint.png',
                    scale: 5,
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Huella Ecologica',
                    style: TextStyle(
                      color: Color(0XFF967259),
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Registrar Reciclaje',
                    style: TextStyle(
                      color: Color(0XFF967259),
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/MedirHuellaEcologica.png',
                    scale: 5,
                  ),
                  const SizedBox(width: 5),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0XFFFFD7D5),
    );
  }
}
