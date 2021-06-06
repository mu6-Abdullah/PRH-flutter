import 'package:PRH/views/intro_page.dart';
import 'package:flutter/material.dart';
import 'views/home_page.dart';
import 'views/home_page2.dart';
import 'views/home_page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroPage(),
    );
  }
}
