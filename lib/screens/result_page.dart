import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constans.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusebable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpritation,
  });

  final String bmiResult;
  final String resultText;
  final String interpritation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'You result:',
                  style: titleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusebableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: bmiTextStyle,
                    ),
                    Text(
                      interpritation,
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () => Navigator.pop(context),
            )
          ]),
    );
  }
}
