import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flutter_application_2/data_helper/data_helper.dart';
import 'package:flutter_application_2/model/model.dart';

class BarImgBodyType extends StatelessWidget {
  final MassType massType;
  const BarImgBodyType({super.key, required this.massType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.containerMargin,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 100,
            child: Image.asset(
              DataHelper.createMainImageUrlAccordingToMassType(massType),
              fit: BoxFit.fill,
            ),
          ),
          Text(
            DataHelper.createMassTypeTextAccordingToMassType(massType),
            style: Constants.bodyTypeTextStyle,
          ),
        ],
      ),
    );
  }
}
