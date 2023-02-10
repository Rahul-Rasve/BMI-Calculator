// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import '../constants.dart';

class IconWidget extends StatelessWidget {
  IconWidget({super.key, required this.genderIcon, required this.genderText});

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
          style: kLabelText,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
