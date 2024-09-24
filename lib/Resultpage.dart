import 'package:bmi_calculator/bottonbuttonCOntiner.dart';
import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';
import 'reuseblecard.dart';

class Resultpage extends StatefulWidget {
  Resultpage(
      {required this.bmiresult,
      required this.actualbmiresultvalue,
      required this.interpretation});
  final String bmiresult;
  final String actualbmiresultvalue;
  final String interpretation;
  @override
  State<Resultpage> createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "YOUR RESULT",
                    style: ktitelstyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: reuseblecard(
                kolor: kreuseblecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.bmiresult,
                      style: knormaltext,
                    ),
                    Text(
                      widget.actualbmiresultvalue,
                      style: klargetex,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      widget.interpretation,
                      style: kinterpretationStyle,
                    )
                  ],
                ),
              ),
            ),
            Bottombutton(
                buttonname: "Calculate Again",
                onpressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
