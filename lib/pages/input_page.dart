import 'package:bmi_calculator/model/results_page_args.dart';
import 'package:bmi_calculator/services/bmi_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/routes.dart';
import 'package:bmi_calculator/widgets/icon_content_card.dart';
import 'package:bmi_calculator/widgets/slider_card.dart';
import 'package:bmi_calculator/widgets/number_picker_card.dart';
import 'package:bmi_calculator/widgets/footer_button.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.male;
  int height = 182;
  int weight = 60;
  int age = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: IconContentCard(
                  onPress: () {
                    setState(() {
                      gender = Gender.male;
                    });
                  },
                  cardColor: gender == Gender.male ? kPurpleGray : kPurpleDark,
                  textColor: kGrayHandsome,
                  label: 'MALE',
                  icon: FontAwesomeIcons.mars,
                )),
                Expanded(
                  child: IconContentCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    cardColor:
                        gender == Gender.female ? kPurpleGray : kPurpleDark,
                    textColor: kGrayHandsome,
                    label: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                )
              ],
            )),
            Expanded(
                child: SliderCard(
              value: height,
              label: 'HEIGHT',
              secondaryLabel: 'cm',
              onSlide: (value) {
                setState(() {
                  height = value.floor();
                });
              },
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: NumberPickerCard(
                    label: 'WEIGHT',
                    value: weight,
                    onMinusPressed: () {
                      setState(() {
                        weight--;
                      });
                    },
                    onPlusPressed: () {
                      setState(() {
                        weight++;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: NumberPickerCard(
                    label: 'AGE',
                    value: age,
                    onMinusPressed: () {
                      setState(() {
                        age--;
                      });
                    },
                    onPlusPressed: () {
                      setState(() {
                        age++;
                      });
                    },
                  ),
                ),
              ],
            )),
            FooterButton(
              label: 'CALCULATE',
              onPressed: () {
                final calc = new BMIService(height: height, weight: weight);

                Navigator.pushNamed(context, kResultsPageRoute, arguments: ResultsPageArgs(
                  value: calc.calculateBMI(),
                  title: calc.getTitle(),
                  description: calc.getDescription()
                ));
              },
            ),
          ],
        ));
  }
}
