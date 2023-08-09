import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:kavin_mart/Screens/login_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      duration: 3000,
      backgroundColor: Color(0xffA4D0A4),
      splash: Center(child: Text("Welcome",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
      splashIconSize: size.width*0.5,
      nextScreen: LoginPage());
  }
}