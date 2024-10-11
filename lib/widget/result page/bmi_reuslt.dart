import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class BmiReuslt extends StatelessWidget {
  const BmiReuslt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.ContainerMargin,
      // color: Colors.yellow,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "Your Body Mass Index",
            style: Constants.resultTextStyle,
          ),
          Text(
            "32.12",
            style: Constants.resultIndexTextstyle,
          ),
        ],
      ),
    );
  }
}
