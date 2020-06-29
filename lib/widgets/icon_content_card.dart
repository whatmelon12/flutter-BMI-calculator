import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/styles.dart';
import 'reusable_card.dart';

class IconContentCard extends StatelessWidget {
  final Color cardColor;
  final Color textColor;
  final String label;
  final IconData icon;
  final Function onPress;

  IconContentCard(
      {@required this.cardColor,
      @required this.textColor,
      @required this.label,
      @required this.icon,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      onPress: onPress,
      color: cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            label,
            style: kLabelTextStyle),
        ],
      ),
    );
  }
}
