import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/styles.dart';

class FooterButton  extends StatelessWidget {
  final String label;
  final Function onPressed;

  FooterButton({@required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kHotPink,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
             label,
              style: kLargeButtonText,
            )),
      ),
    );
  }
}
