import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flutter_application_2/model/model.dart';
import 'package:flutter_application_2/widget/result%20page/bar_img_body_type.dart';
import 'package:flutter_application_2/widget/result%20page/bmi_reuslt.dart';
import 'package:flutter_application_2/widget/result%20page/suggestions.dart';

class ResultPage extends StatelessWidget {
  final double massIndex;
  final MassType massType;
  const ResultPage(
      {super.key, required this.massIndex, required this.massType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.appBackgroundColur,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: Constants.bakButtonPadding,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Constants.backButtonColor,
              size: 30,
            ),
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: Constants.appColor.shade400,
        title: Text(
          "Body Mass Index",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: Column(
        children: [
          BmiReuslt(
            massIndex: massIndex,
          ),
          BarImgBodyType(
            massType: massType,
          ),
          Suggestions(
            massType: massType,
          ),
        ],
      ),
    );
  }
}
