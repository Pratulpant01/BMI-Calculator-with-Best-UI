import 'package:bmi_calculator_updated/constants/constants.dart';
import 'package:flutter/material.dart';

class lower_card_ui extends StatefulWidget {
  lower_card_ui({required this.age, this.inState1, this.inState2});

  int age = 20;
  VoidCallback? inState1, inState2;

  @override
  State<lower_card_ui> createState() => _lower_card_uiState();
}

class _lower_card_uiState extends State<lower_card_ui> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "AGE",
          style: labelTextStyle,
        ),
        Text(
          widget.age.toString(),
          style: boldTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              heroTag: Text("btn1"),
              onPressed: widget.inState1,
              backgroundColor: activeCardColor,
              child: Icon(
                Icons.remove,
                size: 30,
                color: textColor,
              ),
            ),
            FloatingActionButton(
              heroTag: Text("btn2"),
              backgroundColor: activeCardColor,
              onPressed: widget.inState2,
              child: Icon(
                Icons.add,
                size: 30,
                color: textColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class lower_card_weight_ui extends StatefulWidget {
  lower_card_weight_ui(
      {required this.weight, required this.button1, required this.button2});

  final int weight;
  VoidCallback? button1, button2;

  @override
  State<lower_card_weight_ui> createState() => _lower_card_weight_uiState();
}

class _lower_card_weight_uiState extends State<lower_card_weight_ui> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "WEIGHT",
          style: labelTextStyle,
        ),
        Text(
          widget.weight.toString(),
          style: boldTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              heroTag: Text("btn3"),
              backgroundColor: activeCardColor,
              onPressed: widget.button1,
              child: Icon(
                Icons.remove,
                color: textColor,
                size: 30,
              ),
            ),
            FloatingActionButton(
              heroTag: Text("btn4"),
              backgroundColor: activeCardColor,
              onPressed: widget.button2,
              child: Icon(
                Icons.add,
                color: textColor,
                size: 30,
              ),
            ),
          ],
        )
      ],
    );
  }
}
