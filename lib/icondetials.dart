import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';

class Icondetiales extends StatelessWidget {
  final IconData icon;
  final String Label;

  Icondetiales({required this.icon, required this.Label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon, // Use the passed icon instead of FontAwesomeIcons.mars
          size: 60.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Label,
          style: kLabelstyle,
          // Use the passed Label instead of "MALE"
        )
      ],
    );
  }
}
