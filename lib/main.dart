import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color mainColor = Color(0xFFFF5959);
Color grad1 = Color(0xFFFF5F5F);
Color grad2 = Color(0xFFE65050);
Color shadow1 = Color(0xFFFF6666);
Color shadow2 = Color(0xFFD94C4C);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonPage(),
    );
  }
}

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: GestureDetector(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [grad1, grad2]
                  ),
                  boxShadow: [
                    new BoxShadow(
                      color: shadow1,
                      offset: new Offset(-30, -30),
                      blurRadius: 60
                    ),
                    new BoxShadow(
                      color: shadow2,
                      offset: new Offset(30, 30),
                      blurRadius: 60
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
