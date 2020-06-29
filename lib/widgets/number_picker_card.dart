import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';

class NumberPickerCard extends StatelessWidget {
  final String label;
  final int value;
  final Function onPlusPressed;
  final Function onMinusPressed;

  NumberPickerCard(
      {@required this.label,
      @required this.value,
      this.onMinusPressed,
      this.onPlusPressed});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: kLabelTextStyle,
          ),
          Text(
            value.toString(),
            style: kEmphasisTextLabel,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: onMinusPressed,
              ),
              SizedBox(
                width: 10,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: onPlusPressed,
              )
            ],
          )
        ],
      ),
    );
  }
}
