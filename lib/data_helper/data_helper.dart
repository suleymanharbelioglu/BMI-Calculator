import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DataHelper {
  static String createMainImageUrlAccordingToMassType(MassType massType) {
    debugPrint("$massType-------------------------------");
    var urlHeader = "assets/images/";
    switch (massType) {
      case MassType.underWeight:
        return "${urlHeader}underWeight.png";
      case MassType.normalWeight:
        return "${urlHeader}normalWeight.png";
      case MassType.overWeight:
        return "${urlHeader}overWeight.png";
      case MassType.extremelyObese:
        return "${urlHeader}extremelyObese.png";

      default:
        return "";
    }
  }

  static String createMassTypeTextAccordingToMassType(MassType massType) {
    debugPrint("$massType-------------------------------");

    switch (massType) {
      case MassType.underWeight:
        return "Under Weight";
      case MassType.normalWeight:
        return "Normal Weight";
      case MassType.overWeight:
        return "Over Weight";
      case MassType.extremelyObese:
        return "Extremely Obese";

      default:
        return "null";
    }
  }

  static List<String> generateSuggestionListAccordingToMassType(
      MassType massType) {
    debugPrint("$massType-------------------------------");

    switch (massType) {
      case MassType.underWeight:
        return [
          "Do not drink water before meals.",
          "Use bigger plates.",
          "Get quality sleep."
        ];
      case MassType.normalWeight:
        return [
          "Stay active.",
          "Choose the right foods and Cook by yourself.",
          "Focus on relaxation and sleep",
        ];
      case MassType.overWeight:
        return [
          "Drink water a half hour before meals.",
          "Eat only two meals per day and make sure that they contains a high protein",
          "Drink coffee or tea and Avoid sugary food",
        ];
      case MassType.extremelyObese:
        return [
          "Drink water a half hour before meals.",
          "Eat only two meals per day and make sure that they contains a high protein",
          "Drink coffee or tea and Avoid sugary food",
        ];

      default:
        return ["null", "null", "null"];
    }
  }

  static List<String> generateSuggestionImageUrlListAccordingToMassType(
      MassType massType) {
    var urlHeader = "assets/images/";

    switch (massType) {
      case MassType.normalWeight:
        return [
          "${urlHeader}run.png",
          "${urlHeader}rightFoods.png",
          "${urlHeader}sleep.png",
        ];
      case MassType.underWeight:
        return [
          "${urlHeader}noWater.png",
          "${urlHeader}biggerPlate.png",
          "${urlHeader}sleep.png",
        ];
      case MassType.overWeight:
        return [
          "${urlHeader}water.png",
          "${urlHeader}egg.png",
          "${urlHeader}noCoffee.png",
        ];
      case MassType.extremelyObese:
        return [
          "${urlHeader}water.png",
          "${urlHeader}egg.png",
          "${urlHeader}noCoffee.png",
        ];

      default:
        return [
          "${urlHeader}sleep.png",
          "${urlHeader}sleep.png",
          "${urlHeader}sleep.png",
        ];
    }
  }

  static calculateBodyMassIndex(
      String age, String height, String weight, String gender) {
    double genderVar = calculateGenderVar(gender);
    double ageVar = calculateAgeVar(age);
    double heightNum = double.parse(height);
    double weightNum = double.parse(weight);
    var h = (heightNum / 100) * (heightNum / 100);
    double bmi = (weightNum / h) - ageVar - genderVar;
    if (bmi < 0) {
      bmi = 0;
    } else if (bmi > 100) {
      bmi = 100;
    }
    return bmi;
  }

  static double calculateGenderVar(String gender) {
    switch (gender) {
      case "Male":
        return 2.5;
      case "Female":
        return 0;

      default:
        return 0;
    }
  }

  static double calculateAgeVar(String age) {
    switch (age) {
      case "old":
        return 0.5;
      case "adult":
        return 1;
      case "teen":
        return 0.5;
      case "child":
        return 0;
      default:
        return 0;
    }
  }

  static MassType? returnMassTypeAcordingToBMI(double bodyMassIndex) {
    if (bodyMassIndex > 30) {
      return MassType.extremelyObese;
    } else if (bodyMassIndex > 25) {
      return MassType.overWeight;
    } else if (bodyMassIndex > 18) {
      return MassType.normalWeight;
    } else if (bodyMassIndex < 18) {
      return MassType.underWeight;
    }

    return null;
  }

  static void showToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

static void showToastForDropDownButtons(String? age , String? gender) {
    if (age == null && gender == null) {
      DataHelper.showToastMessage("choose age and gender");
    } else if (age == null) {
      DataHelper.showToastMessage("choose age");
    } else if (gender == null) {
      DataHelper.showToastMessage("choose gender");
    }
  }
}
