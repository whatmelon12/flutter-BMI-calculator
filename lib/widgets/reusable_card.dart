import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/colors.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPress;

  ReusableCard({this.color = kPurpleGray, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}