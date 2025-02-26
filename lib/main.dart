import 'package:flutter/material.dart';
import 'package:food_app/page/bottom_navbar_page.dart';
import 'package:food_app/page/home_screen.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: BottomNavbarPage(),
    );
  }
}
