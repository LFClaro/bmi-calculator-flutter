import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.btnTitle});

  final Function onTap;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            btnTitle,
            style: kCalcTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBbottomContainerHeight,
      ),
    );
  }
}
