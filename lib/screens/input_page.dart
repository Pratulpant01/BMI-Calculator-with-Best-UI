import 'package:bmi_calculator_updated/screens/bottom_button.dart';
import 'package:bmi_calculator_updated/screens/bottom_card_ui.dart';
import 'package:bmi_calculator_updated/screens/calculator_brain.dart';
import 'package:bmi_calculator_updated/screens/cardUI.dart';
import 'package:bmi_calculator_updated/screens/iconContent.dart';
import 'package:bmi_calculator_updated/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator_updated/constants/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  int height = 180;
  int weight = 100;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        elevation: 4,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: cardUi(
                      cColor: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: iconContent(
                        iconLogo: Icon(
                          Icons.male,
                          size: 80,
                        ),
                        iconText: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: cardUi(
                      cColor: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: iconContent(
                        iconLogo: Icon(
                          Icons.female,
                          size: 80,
                        ),
                        iconText: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: cardUi(
                cColor: inactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: labelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: boldTextStyle,
                        ),
                        Text(
                          "cm",
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: buttonColor,
                          activeTrackColor: activeSlider,
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 230.0,
                          inactiveColor: inactiveSlider,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: cardUi(
                    cColor: inactiveCardColor,
                    cardChild: lower_card_weight_ui(
                      weight: weight,
                      button1: () {
                        setState(() {
                          10 < weight && weight <= 150 + 1 ? weight-- : weight;
                        });
                      },
                      button2: () {
                        setState(() {
                          10 - 1 < weight && weight <= 150 - 1
                              ? weight++
                              : weight;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: cardUi(
                    cColor: inactiveCardColor,
                    cardChild: lower_card_ui(
                        age: age,
                        inState1: () {
                          setState(() {
                            10 < age && age <= 100 ? age-- : age;
                          });
                        },
                        inState2: () {
                          setState(() {
                            10 - 1 < age && age <= 100 - 1 ? age++ : age;
                          });
                        }),
                  ),
                ),
              ],
            ),
          ),
          bottom_button(
              buttonTitle: "CALCULATE YOUR BMI",
              onPress: () {
                calculatorBrain calc =
                    calculatorBrain(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(
                      bmiResult: calc.calculateBMI(),
                      bmiString: calc.getResult(),
                      bmiInterpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
