import 'package:bmi_calculator_updated/constants/constants.dart';
import 'package:bmi_calculator_updated/screens/bottom_button.dart';
import 'package:bmi_calculator_updated/screens/cardUI.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.bmiInterpretation,
      required this.bmiResult,
      required this.bmiString});

  final String bmiResult;
  final String bmiString;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        elevation: 4,
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
                  "Your Result",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: cardUi(
                cColor: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiString,
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: boldTextStyle,
                    ),
                    Text(
                      bmiInterpretation,
                      textAlign: TextAlign.center,
                      style: labelTextStyle.copyWith(
                          color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            bottom_button(
              buttonTitle: "RECALCULATE YOUR BMI",
              onPress: () {
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}
