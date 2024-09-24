import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';

class Bottombutton extends StatelessWidget {
  Bottombutton({required this.buttonname, required this.onpressed});
  final String buttonname;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
          child: Center(
              child: Text(
            buttonname,
            style: kbottomContainerstyle,
          )),
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(bottom: 5.0),
          color: kbottomColor,
          width: double.infinity,
          height: kbottomheight),
    );
  }
}
