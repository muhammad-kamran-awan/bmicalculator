import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/formula.dart';

class ResultsPage extends StatefulWidget {
  int weight;
  int height;
  int age;
  ResultsPage({required this.weight, required this.height, required this.age});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Logic logic = Logic();
  double bmiResult = 0;
  @override
  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        backgroundColor: Colors.blue[300],
        body: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'BMI RESULT',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResult.toStringAsFixed(1),
                    style: TextStyle(
                        fontSize: 80,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BMI CATEGORIES",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        backgroundColor: Colors.green,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.cyan[100]),
                    child: Text(
                      ''' Underweight = <18.5
 Normal weight = 18.5–24.9
 Overweight = 25–29.9
 Obesity = BMI of 30 or greater

''',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
