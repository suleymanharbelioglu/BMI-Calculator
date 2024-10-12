import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class BmiReuslt extends StatelessWidget {
  final double massIndex;
  const BmiReuslt({super.key, required this.massIndex});

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
            massIndex.toStringAsFixed(2).toString(),
            style: Constants.resultIndexTextstyle,
          ),
        ],
      ),
    );
  }
}
