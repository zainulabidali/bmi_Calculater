import 'package:bmi_calculator/Resultpage.dart';
import 'package:bmi_calculator/RoundIconbutton.dart';
import 'package:bmi_calculator/bottonbuttonCOntiner.dart';
import 'package:bmi_calculator/const.dart';
import 'package:bmi_calculator/function..dart';
import 'package:bmi_calculator/reuseblecard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './icondetials.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color MaleInactiveColor = kInactiveContainerColor;
  Color FemaleInactiveColor = kInactiveContainerColor;

  void changeColor(int gender) {
    //male =,female=2,
    setState(() {
      if (gender == 1) {
        if (MaleInactiveColor == kInactiveContainerColor) {
          MaleInactiveColor = kreuseblecardcolor;
          FemaleInactiveColor = kInactiveContainerColor;
        } else {
          MaleInactiveColor = kInactiveContainerColor;
        }
      }

      if (gender == 2) {
        if (FemaleInactiveColor == kInactiveContainerColor) {
          FemaleInactiveColor = kreuseblecardcolor;
          MaleInactiveColor = kInactiveContainerColor;
        } else {
          FemaleInactiveColor = kInactiveContainerColor;
        }
      }
    });
  }

  int hight = 180;
  int wight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.white),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        changeColor(1);
                      },
                      child: reuseblecard(
                        cardchild: Icondetiales(
                          icon: FontAwesomeIcons.mars,
                          Label: "MALE",
                        ),
                        kolor: MaleInactiveColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        changeColor(2);
                      },
                      child: reuseblecard(
                          cardchild: Icondetiales(
                            icon: FontAwesomeIcons.venus,
                            Label: "FEMALE",
                          ),
                          kolor: FemaleInactiveColor),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: reuseblecard(
                  cardchild: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HIGHT",
                        textAlign: TextAlign.center,
                        style: kLabelstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            hight.toString(),
                            style: knumberstyle,
                          ),
                          Text("cm")
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 25.0)),
                        child: Slider(
                            value: hight.toDouble(),
                            min: 20,
                            max: 200,
                            activeColor: Colors.white,
                            inactiveColor: Colors.grey,
                            onChanged: (double newvalue) {
                              setState(() {
                                hight = newvalue.round();
                              });
                            }),
                      )
                    ],
                  ),
                  kolor: kreuseblecardcolor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: reuseblecard(
                        cardchild: Column(
                          children: [
                            Text(
                              "WEIGHT",
                              style: kLabelstyle,
                            ),
                            Text(
                              wight.toString(),
                              style: knumberstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconbutton(
                                  icon: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    setState(() {
                                      wight--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconbutton(
                                  icon: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    setState(() {
                                      wight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        kolor: kreuseblecardcolor),
                  ),
                  Expanded(
                    child: reuseblecard(
                        cardchild: Column(
                          children: [
                            Text(
                              "AGE",
                              style: kLabelstyle,
                            ),
                            Text(
                              age.toString(),
                              style: knumberstyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIconbutton(
                                  icon: FontAwesomeIcons.minus,
                                  onpressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                RoundIconbutton(
                                  icon: FontAwesomeIcons.plus,
                                  onpressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                        kolor: kreuseblecardcolor),
                  )
                ],
              ),
            ),
            Bottombutton(
              buttonname: 'Calculate',
              onpressed: () {
                Calculator calc = Calculator(height: hight, weight: wight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Resultpage(
                              actualbmiresultvalue: calc.calculateBMI(),
                              bmiresult: calc.getResult(),
                              interpretation: calc.getInterpretation(),
                            )));
              },
            ),
          ],
        ));
  }
}
