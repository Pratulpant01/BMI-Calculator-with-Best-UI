import 'package:bmi_calculator_updated/screens/input_page.dart';
import 'package:flutter/material.dart';

class cardUi extends StatelessWidget {
  cardUi({required this.cColor, required this.cardChild});
  final Widget cardChild;
  final Color cColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
