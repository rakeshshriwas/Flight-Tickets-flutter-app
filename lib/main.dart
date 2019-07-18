import 'package:flutter/material.dart';
import './pages/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: HomeScreen(),
    );
  }
}

/* 

  Set 
  Default theme of app

*/
ThemeData appTheme =
    ThemeData(primaryColor: Color(0xFFF3791A), fontFamily: "Oxygen");
