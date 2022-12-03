import 'package:flutter/material.dart';
import 'package:shunta_recicla/huella_ecologica.dart';
import 'package:shunta_recicla/registrar_reciclaje.dart';
import 'package:shunta_recicla/reusable_menu_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Fondoapp.png" ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Color(0XFFFF9248),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/LogoNegro.png', scale: 12),
              const SizedBox(width: 10),
              const Text(
                'SHUNTÁ RECICLA',
                style: TextStyle(
                  color: Colors.black,
                  wordSpacing: 3,
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: MenuCard(
                  OnPress:(){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => HuellaEcologica()));
                  },
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 128,
                          height: 128,
                          child: Image.asset('assets/images/huellashunta.png')),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Mide tu huella ecologica',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Conoce tu estado actual y \n\ como puedes mejorar tu \n\ estilo de vida reciclando',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  colour: Color(0XFFA0D995),
              ),
            ),
            Expanded(
              child: MenuCard(
                  OnPress: (){
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => RegistrarReciclaje()));
                  },
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 128,
                          height: 128,
                          child: Image.asset(
                              'assets/images/MedirHuellaEcologica.png')),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Registrar Reciclaje',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Cuéntanos fácilmente cómo de  gorditos \n\ van tus  segregadores de Shuntás ',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  colour: Color(0XFFFFD384)),
            ),
            Expanded(
              child: MenuCard(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 128,
                          height: 128,
                          child: Image.asset(
                              'assets/images/recicladorShunta.png')),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Conocer Recicladores',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            'Entérate del gran impacto social \n\ que vienes generando con Shuntá',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  colour: Color(0XFFFFD7B5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
