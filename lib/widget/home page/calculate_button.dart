import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flutter_application_2/page/result_page.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ResultPage(),
          ));
        },
        child: Container(
          margin: Constants.ContainerMargin,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              // color: Colors.yellow.shade100,
              ),
          child: Container(
            height: 70,
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Constants.appColor,
            ),
            child: Text(
              "Calculate",
              style: Constants.calculateTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
