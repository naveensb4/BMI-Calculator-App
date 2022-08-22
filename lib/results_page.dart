import 'package:bmi_calculator/bottom_class.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'card_creator.dart';

class ResultPage extends StatelessWidget {

  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('WHATS UR BMI???', style: kLargeButtonTextStyle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
            "Your Result",
            style: kMiddleButtonTextStyle,
          ),
              )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult,
                    style: kResultsTextStyle,
                  ),
                  Text(
                    resultText,
                    style: kBMIResultsTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kResultsTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonText: 'RECALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
