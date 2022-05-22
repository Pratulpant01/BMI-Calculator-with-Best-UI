import 'package:bmi_calculator_updated/constants/constants.dart';
import 'package:bmi_calculator_updated/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color: mainColor,
        ),
        scaffoldBackgroundColor: bgColor,
      ),
      home: InputPage(),
    );
  }
}
