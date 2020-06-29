
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/routes.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import 'package:bmi_calculator/pages/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      initialRoute: kInputPageRoute,
      routes: {
        kInputPageRoute: (context) => new InputPage(),
        kResultsPageRoute: (context) => new ResultsPage()
      },
    );
  }
}
