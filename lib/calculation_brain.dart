// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

import 'constants.dart';

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
    kBmiRange = '25 - Above';
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
  kResult = (weight / pow(height, 2)) * pow(10, 4);
}
