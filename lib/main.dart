import 'package:flutter/material.dart';
import 'screens/home1_screen.dart';

void main() {
  runApp(MealApp());
}

class MealApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Home1Screen(), // đổi từ SplashScreen → Home1Screen
      debugShowCheckedModeBanner: false,
    );
  }
}