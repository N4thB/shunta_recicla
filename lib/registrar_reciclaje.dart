import 'package:flutter/material.dart';
import 'package:shunta_recicla/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class RegistrarReciclaje extends StatelessWidget {
  const RegistrarReciclaje({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFFD384),//Color(0XFFBCF4F5),
        centerTitle: true,
        title: Text(
              'REGISTRAR RECICLAJE',
              style: TextStyle(
                color: Colors.black,
                wordSpacing: 3,
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            icon: Image.asset('assets/images/LogoNegro.png', scale:10),
            tooltip: 'Regresar a Inicio',)
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs:[

            Tab(
              icon: Icon(Icons.restore_from_trash,
              color: Colors.black,),


            ),
            Tab(
              icon: Icon(Icons.recycling,
              color: Colors.black,),
            ),
            Tab(
              icon: Icon(Icons.check_circle,
              color: Colors.black,),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children:[

          Center(
            child: Scaffold(
              
            ),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
        ],
      ),
    );
  }
}

