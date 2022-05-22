import 'package:bmi_calculator_updated/constants/constants.dart';
import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  iconContent({required this.iconText, required this.iconLogo});

  final String iconText;
  final Icon iconLogo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconLogo,
        SizedBox(
          height: 15,
        ),
        Text(
          iconText,
          style: labelTextStyle,
        )
      ],
    );
  }
}
