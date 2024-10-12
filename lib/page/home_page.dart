import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flutter_application_2/data_helper/data_helper.dart';
import 'package:flutter_application_2/model/model.dart';
import 'package:flutter_application_2/page/result_page.dart';
import 'package:flutter_application_2/widget/home%20page/age_text_form_field.dart';
import 'package:flutter_application_2/widget/home%20page/height_text_form_filed.dart';
import 'package:flutter_application_2/widget/home%20page/weight_text_form_filed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GlobalKey<FormState> formKey;
  String age = "";
  String height = "";
  String weight = "";
  late double bodyMassIndex;
  late MassType massType;
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.appBackgroundColur,
      appBar: AppBar(
        toolbarHeight: 70,
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
      body: Form(
        key: formKey,
        child: Column(
          children: [
            AgeTextFormField(onAgeToke: (String tokenAge) {
              age = tokenAge;
            }),
            HeightTextFormFiled(
              onHeightToke: (String tokenheight) {
                height = tokenheight;
              },
            ),
            WeightTextFormFiled(
              onWeightToke: (String tokenweight) {
                weight = tokenweight;
              },
            ),
            calculateButton(),
          ],
        ),
      ),
    );
  }

  Widget calculateButton() {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          bodyMassIndex =
              DataHelper.calculateBodyMassIndex(age, height, weight);
          
          massType = DataHelper.returnMassTypeAcordingToBMI(bodyMassIndex)!;
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                ResultPage(massIndex: bodyMassIndex, massType: massType),
          ));
        }
      },
      child: Container(
        margin: Constants.calculateButtonPading,
        alignment: Alignment.center,
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Constants.appColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          "Calculate",
          style: Constants.calculateTextStyle,
        ),
      ),
    );
  }
}
