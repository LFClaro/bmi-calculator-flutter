import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.cardColor, this.cardChild, this.onPress});

  final Color cardColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: cardColor ?? Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
