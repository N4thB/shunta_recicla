import 'package:flutter/material.dart';
import 'package:shunta_recicla/home_screen.dart';
import 'dart:async';

void main() {
  runApp(Shunta());
}

class Shunta extends StatelessWidget {
  const Shunta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shunta Recicla',
      theme: ThemeData.light().copyWith(

        scaffoldBackgroundColor: Color(0XFFFFD7B5),
        backgroundColor: Color(0XFFFF9248),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 16, fontFamily: 'Nunito', fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 12, fontFamily: 'Quicksand', fontWeight: FontWeight.normal),
        ),

      ),
     home: ScreenInicio(),
    );
  }
}


class ScreenInicio extends StatefulWidget {
  const ScreenInicio({Key? key}) : super(key: key);

  @override
  State<ScreenInicio> createState() => SplashScreenState();
}

class SplashScreenState extends State<ScreenInicio> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0XFFFFD7B5),
      alignment: AlignmentDirectional.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 128,
          ),
          Image.asset('assets/images/shuntaReciclaSplashScreenLogo.png'),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              'Shunta Devops ª',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0XFFFF9248),
                  fontSize: 12,
                  fontFamily: 'Quicksand',
                  wordSpacing: 2.4,
                  decoration: TextDecoration.none),
            ),
          ),
        ],
      ),
    );
  }
}


