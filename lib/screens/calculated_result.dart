// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../calculation_brain.dart';
import '../components/bottom_button.dart';
import '../constants.dart';

class CalculatedResult extends StatelessWidget {
  const CalculatedResult({Key? key}) : super(key: key);

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
        child: Result(),
      ),
    );
  }
}

// class BmiResult extends StatefulWidget {
//   const BmiResult({Key? key}) : super(key: key);
//
//   @override
//   State<BmiResult> createState() => _BmiResultState();
// }
//
// class _BmiResultState extends State<BmiResult> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('BMI Calculator'),
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Padding(
//             padding: const EdgeInsets.fromLTRB(15.0, 5.0, 10.0, 0.0),
//             child: Text(
//               'Your Result',
//               style: TextStyle(
//                 fontSize: 50.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               margin: EdgeInsets.all(15.0),
//               padding: EdgeInsets.all(15.0),
//               decoration: BoxDecoration(
//                 color: kActiveCardColor,
//                 borderRadius: BorderRadius.circular(10.0),
//               ),
//               child: Column(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.symmetric(vertical: 40.0),
//                     child: decideType(kResult.toDouble()),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(bottom: 50.0),
//                     child: Text(
//                       kResult.toString(),
//                       style: TextStyle(
//                         fontSize: 100.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(bottom: 5.0),
//                     child: Text(
//                       '$kTypeString BMI Range:',
//                       style: TextStyle(
//                         fontSize: 25.0,
//                         fontWeight: FontWeight.bold,
//                         color: kInactiveSliderColor,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(bottom: 50.0),
//                     child: Text(
//                       '$kBmiRange Kg/m2',
//                       style: TextStyle(
//                         fontSize: 25.0,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     kMessageString,
//                     style: TextStyle(
//                       fontSize: 25.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 Navigator.of(context, rootNavigator: true).pop(context);
//               });
//             },
//             child: Container(
//               color: kActiveBottomContainerColor,
//               margin: EdgeInsets.only(top: 10.0),
//               width: double.infinity,
//               height: kBottomContainerHeight,
//               child: Center(
//                 child: Text(
//                   'RE-CALCULATE YOUR BMI',
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     letterSpacing: 1.0,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  decideType(kResult.toDouble()),
                  Text(
                    kResult.toStringAsFixed(1), //limit ans to 1 decimal place
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100.0,
                    ),
                  ),
                  Text(
                    kMessageString,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            textString: 'RE-CALCULATE BMI',
            onTap: () {
              setState(() {
                Navigator.of(context, rootNavigator: true).pop();
              });
            },
          ),
        ],
      ),
    );
  }
}
