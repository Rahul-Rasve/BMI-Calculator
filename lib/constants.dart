// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

const kBottomContainerHeight = 70.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kActiveBottomContainerColor = Color(0xFFEB1555);
const kThumbColor = Color(0xFFEB1555);
const kInactiveSliderColor = Color(0xFF8D8E98);
const kOverlayThumbColor = Color(0x25EB1555);
const kRoundButtonBackground = Color(0xFF4C4F5E);

int kResult = 0;
String kMessageString = '';
String kTypeString = '';
String kBmiRange = '';

const kLabelText = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
  letterSpacing: 1.0,
  fontWeight: FontWeight.w500,
);

const kLabelNumber = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.w900,
);

Widget decideType(double kResult) {
  if (kResult < 18.5) {
    kMessageString = 'You are Under Weight. You Need to Work Harder!';
    kTypeString = 'Under Weight';
    kBmiRange = '0.0 - 18.5';
    return Text(
      kTypeString,
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.yellow,
      ),
    );
  } else if (kResult >= 18.5 && kResult < 25) {
    kMessageString = 'You have Normal Body Weight. Good Job!';
    kTypeString = 'Normal';
    kBmiRange = '18.5 - 25';
    return Text(
      kTypeString,
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    );
  } else {
    kMessageString = 'You are Over Weight. You Need to Work Harder!';
    kTypeString = 'Over Weight';
    kBmiRange = '25 - 40';
    return Text(
      kTypeString,
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}

void calculateBMI(double weight, double height) {
  kResult = ((weight / pow(height, 2)) * pow(10, 4)).round();
}
