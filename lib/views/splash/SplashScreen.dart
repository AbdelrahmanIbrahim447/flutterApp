import 'package:aeadty/helpers/constants.dart';
import 'package:aeadty/views/home/HomeScreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: main_color,
      splash: 'assets/logo.png',
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.slideTransition,
    );
  }
}
