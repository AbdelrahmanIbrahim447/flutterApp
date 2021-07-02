
import 'package:aeadty/views/home/HomeScreen.dart';
import 'package:aeadty/views/splash/SplashScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String splashScreen = 'splashScreen';
const String homeScreen = 'homeScreen';


Route<dynamic>? controller( RouteSettings settings)  {
  switch (settings.name){

    case splashScreen:
      return MaterialPageRoute(builder: (context) => SplashScreen());

    case homeScreen:
      return MaterialPageRoute(builder: (context) => HomeScreen());

    default:
      throw('This route dose not exsit');
  }
}