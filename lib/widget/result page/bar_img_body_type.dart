import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class BarImgBodyType extends StatelessWidget {
  const BarImgBodyType({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      margin: Constants.ContainerMargin,
      // color: Colors.yellow,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.yellow,
            height: 200,
            width: 100,
            child: Image.asset(
              "assets/images/extreme_obese.png",
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "Extremely Obese",
            style: Constants.bodyTypeTextStyle,
          ),
        ],
      ),
    );
  }
}
