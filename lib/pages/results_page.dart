import 'package:flutter/material.dart';
import 'package:bmi_calculator/model/results_page_args.dart';
import 'package:bmi_calculator/constants/styles.dart';
import 'package:bmi_calculator/widgets/focus_content_card.dart';
import 'package:bmi_calculator/widgets/footer_button.dart';

class ResultsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ResultsPageArgs args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                'Your Results',
                style: kTitleTextLabel,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: FocusContentCard(
              title: args.title,
              value: args.value,
              description: args.description,
            ),
          ),
          FooterButton(
            label: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
