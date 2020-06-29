import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/styles.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';

class SliderCard extends StatelessWidget {
  final int value;
  final String label;
  final String secondaryLabel;
  final Function(double value) onSlide;

  SliderCard({
    this.value,
    this.label,
    this.secondaryLabel,
    this.onSlide
});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      color: kPurpleGray,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: kLabelTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(value.toString(), style: kEmphasisTextLabel),
              Text(
                secondaryLabel,
                style: kLabelTextStyle,
              )
            ],
          ),
          Slider(
            onChanged: onSlide,
            value: value.toDouble(),
            max: 300,
            min: 0,
            activeColor: kHotPink,
            inactiveColor: kGrayHandsome,
          )
        ],
      ),
    );
  }
}
