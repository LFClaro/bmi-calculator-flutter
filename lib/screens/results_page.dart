import 'package:flutter/material.dart';
import '../constants.dart';
import '../calculator_brain.dart';
import '../components/bottom_button.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultType;
  final String resultDesc;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resultType,
      @required this.resultDesc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: AlignmentDirectional.bottomStart,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultType.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    resultDesc,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              //Navigate to Results
              Navigator.pop(context);
            },
            btnTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
