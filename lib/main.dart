// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A1234),
        ),
        scaffoldBackgroundColor: Color(0xFF0A1234),
      ),
      home: SafeArea(
        child: InputPage(),
      ),
    );
  }
}
