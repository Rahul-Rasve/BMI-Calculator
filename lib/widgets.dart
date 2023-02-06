// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardColor, this.cardChild});

  final Color cardColor;
  //add the ? to make it nullable, which makes it not required
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: cardChild,
    );
  }
}

class IconWidget extends StatelessWidget {
  IconWidget({required this.genderIcon, required this.genderText});

  final IconData genderIcon;
  final String genderText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 100.0,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          genderText,
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),
            letterSpacing: 1.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
