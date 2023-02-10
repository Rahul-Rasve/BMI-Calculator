// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.textString, required this.onTap});

  String? textString;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kActiveBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            textString!,
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.0,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ),
    );
  }
}
