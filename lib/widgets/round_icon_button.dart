import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/colors.dart';

class RoundIconButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Function onPressed;
  
  RoundIconButton({@required this.icon, this.color = kGrayDarker, @required this.onPressed});
  
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      elevation: 6,
      shape: CircleBorder(),
      fillColor: color,
      child: Icon(icon),
      onPressed: onPressed,
    );
  }
}
