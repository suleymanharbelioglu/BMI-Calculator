import 'package:flutter_application_2/model/model.dart';

class DataHelper {
  static String createMainImageUrlAccordingToMassType(MassType massType) {
    var urlHeader = "assets/images/";
    switch (massType) {
      case MassType.underWeight:
        return urlHeader + "underWeight.png";
      case MassType.normalWeight:
        return urlHeader + "normalWeight.png";
      case MassType.overWeight:
        return urlHeader + "overWeight.png";
      case MassType.extremelyObese:
        return urlHeader + "extremelyObese.png";

      default:
        return "";
    }
  }

  static String createMassTypeTextAccordingToMassType(MassType massType) {
    switch (massType) {
      case MassType.underWeight:
        return "Under Weight";
      case MassType.normalWeight:
        return "Normal Weight";
      case MassType.overWeight:
        return "Over Weight";
      case MassType.extremelyObese:
        return " Extremely Obese";

      default:
        return "";
    }
  }

  static List<String> generateSuggestionListAccordingToMassType(
      MassType massType) {
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
        return [];
    }
  }

  static List<String> generateSuggestionImageUrlListAccordingToMassType(
      MassType massType) {
    var urlHeader = "assets/images/";

    switch (massType) {
      case MassType.normalWeight:
        return [
          urlHeader + "run.png",
          urlHeader + "rightFoods.png",
          urlHeader + "sleep.png",
        ];
      case MassType.underWeight:
        return [
          urlHeader + "noWater.png",
          urlHeader + "biggerPlate.png",
          urlHeader + "sleep.png",
        ];
      case MassType.overWeight:
        return [
          urlHeader + "water.png",
          urlHeader + "egg.png",
          urlHeader + "noCoffee.png",
        ];
      case MassType.extremelyObese:
        return [
          urlHeader + "water.png",
          urlHeader + "egg.png",
          urlHeader + "noCoffee.png",
        ];

      default:
        return [];
    }
  }
}
