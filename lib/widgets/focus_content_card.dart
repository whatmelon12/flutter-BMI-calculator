import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/styles.dart';
import 'reusable_card.dart';

class FocusContentCard extends StatelessWidget {
  final String title;
  final String value;
  final String description;

  FocusContentCard(
      {@required this.title, @required this.value, @required this.description});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kGreenSpooky,
            ),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 90, fontWeight: FontWeight.w700),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, ),
          )
        ],
      ),
    );
  }
}
