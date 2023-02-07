// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int weightCounter = 60;
  int ageCount = 30;
  int heightCount = 180;
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardColor: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconWidget(
                      genderIcon: FontAwesomeIcons.mars,
                      genderText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardColor: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconWidget(
                      genderIcon: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            'HEIGHT',
                            style: kLabelText,
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline
                                .alphabetic, //align all the alphabets in same line
                            children: [
                              Text(
                                heightCount.toString(),
                                style: kLabelNumber,
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 30.0,
                                  color: Color(0xFF8D8E98),
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            activeColor: kActiveSliderColor,
                            inactiveColor: kInactiveSliderColor,
                            value: heightCount.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                heightCount = newValue.round();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelText,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            weightCounter.toString(),
                            style: kLabelNumber,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FloatingActionButton(
                                backgroundColor: kInactiveCardColor,
                                onPressed: () {
                                  setState(() {
                                    ++weightCounter;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: kInactiveCardColor,
                                onPressed: () {
                                  setState(() {
                                    --weightCounter;
                                  });
                                },
                                child: Icon(
                                  Icons.horizontal_rule,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelText,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            ageCount.toString(),
                            style: kLabelNumber,
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FloatingActionButton(
                                backgroundColor: kInactiveCardColor,
                                onPressed: () {
                                  setState(() {
                                    ++ageCount;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: kInactiveCardColor,
                                onPressed: () {
                                  setState(() {
                                    --ageCount;
                                  });
                                },
                                child: Icon(
                                  Icons.horizontal_rule,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kActiveBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: Center(
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
