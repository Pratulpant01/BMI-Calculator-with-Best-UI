import 'package:bmi_calculator_updated/constants/constants.dart';
import 'package:flutter/material.dart';

class bottom_button extends StatelessWidget {
  bottom_button({required this.onPress, required this.buttonTitle});
  VoidCallback onPress;
  String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        color: buttonColor,
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
