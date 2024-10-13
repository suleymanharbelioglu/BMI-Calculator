import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flutter_application_2/data_helper/data_helper.dart';
import 'package:flutter_application_2/model/model.dart';
import 'package:flutter_application_2/page/result_page.dart';
import 'package:flutter_application_2/widget/calculation%20page/age_dropdown.dart';
import 'package:flutter_application_2/widget/calculation%20page/gender_dropdown.dart';
import 'package:flutter_application_2/widget/calculation%20page/height_text_form_filed.dart';
import 'package:flutter_application_2/widget/calculation%20page/weight_text_form_filed.dart';

class CalculationPage extends StatefulWidget {
  const CalculationPage({super.key});

  @override
  State<CalculationPage> createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  late GlobalKey<FormState> formKey;
  String? age;
  String height = "";
  String weight = "";
  String? gender;
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
        title: const Text(
          "Body Mass Index",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 35,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              HeightTextFormFiled(
                onHeightToke: (String tokenheight) {
                  height = tokenheight;
                  debugPrint("height : $height");
                },
              ),
              WeightTextFormFiled(
                onWeightToke: (String tokenweight) {
                  weight = tokenweight;
                  debugPrint("weight : $weight");
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: GenderDropdown(
                        onGenderChoosen: (String genderVar) {
                          gender = genderVar;
                        },
                      ),
                    ),
                    Expanded(
                      child: AgeDropdown(
                        onAgeChoosen: (String ageVar) {
                          age = ageVar;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              calculateButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget calculateButton() {
    return GestureDetector(
      onTap: () {
        DataHelper.showToastForDropDownButtons(age, gender);
        validateAndGoToResultPage();
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
        child: const Text(
          "Calculate",
          style: Constants.calculateTextStyle,
        ),
      ),
    );
  }

  void validateAndGoToResultPage() {
    if (formKey.currentState!.validate() && age != null && gender != null) {
      formKey.currentState!.save();
      bodyMassIndex =
          DataHelper.calculateBodyMassIndex(age!, height, weight, gender!);
      massType = DataHelper.returnMassTypeAcordingToBMI(bodyMassIndex)!;
      debugPrint("bmi : $bodyMassIndex --------------------------");
      debugPrint("massType : $massType -------------------------");
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            ResultPage(massIndex: bodyMassIndex, massType: massType),
      ));
    }
  }
}
