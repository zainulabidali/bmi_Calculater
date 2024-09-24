import 'package:flutter/material.dart';

class RoundIconbutton extends StatelessWidget {
  RoundIconbutton({required this.icon,required this.onpressed});

  final IconData icon;

  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onpressed,
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
    );
  }
}
