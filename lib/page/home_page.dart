import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flutter_application_2/widget/age_text_form_field.dart';
import 'package:flutter_application_2/widget/calculate_button.dart';
import 'package:flutter_application_2/widget/height_text_form_filed.dart';
import 'package:flutter_application_2/widget/weight_text_form_filed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String age = "";
  String height = "";
  String weight = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appBackgroundColur,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Constants.appColor.shade400,
        title: Text(
          "Body Mass Index",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 35,
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          AgeTextFormField(),
          HeightTextFormFiled(),
          WeightTextFormFiled(),
          CalculateButton(),
        ],
      ),
    );
  }
}
