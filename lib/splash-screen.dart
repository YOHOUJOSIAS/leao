import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'main.dart';


class Splascreen extends StatefulWidget {
  static const String id = 'Splash_screen';

  @override
  _SplascreenState createState() => _SplascreenState();
}

class _SplascreenState extends State<Splascreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(

      splash: Image.asset("assets/ko.jpg", height: 100,),
      nextScreen: MyHomePage(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Color(0xFF3689cb),
      duration: 2000,
      splashIconSize: 150,

    );
  }
}
