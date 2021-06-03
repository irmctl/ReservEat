import 'package:flutter/material.dart';
import 'package:reservasion/screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RezervEat",
      theme: ThemeData(backgroundColor: Colors.pinkAccent.shade400),
      home: SplashScreen(),
    );
  }
}
