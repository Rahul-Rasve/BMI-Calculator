// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/screens/calculated_result.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/input': (context) => InputPage(),
        '/calculate': (context) => CalculatedResult(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A1234),
        ),
        scaffoldBackgroundColor: Color(0xFF0A1234),
      ),
      initialRoute: '/input',
    );
  }
}
