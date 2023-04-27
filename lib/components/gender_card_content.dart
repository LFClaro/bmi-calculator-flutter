import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class GenderCardContent extends StatelessWidget {
  GenderCardContent({this.faIcon, this.label});

  final IconData faIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          faIcon ?? FontAwesomeIcons.question,
          size: kIconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label ?? 'GENDER',
          style: kLabelTexStyle,
        ),
      ],
    );
  }
}
