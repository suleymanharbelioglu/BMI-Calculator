import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flutter_application_2/data_helper/data_helper.dart';
import 'package:flutter_application_2/model/model.dart';

class Suggestions extends StatelessWidget {
  final MassType massType;
  const Suggestions({super.key, required this.massType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: Constants.ContainerMargin,
      // color: Colors.yellow,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: Constants.reusltSuggestionPadding,
            padding: Constants.resultSuggestionTextPadding,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Constants.textFiledColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Image.asset(DataHelper
                    .generateSuggestionImageUrlListAccordingToMassType(
                        massType)[0]),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      DataHelper.generateSuggestionListAccordingToMassType(
                          massType)[0],
                      style: Constants.suggestionTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: Constants.reusltSuggestionPadding,
            padding: Constants.resultSuggestionTextPadding,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Constants.textFiledColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Image.asset(DataHelper
                    .generateSuggestionImageUrlListAccordingToMassType(
                        massType)[1]),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      DataHelper.generateSuggestionListAccordingToMassType(
                          massType)[1],
                      style: Constants.suggestionTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: Constants.reusltSuggestionPadding,
            padding: Constants.resultSuggestionTextPadding,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Constants.textFiledColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Image.asset(DataHelper
                    .generateSuggestionImageUrlListAccordingToMassType(
                        massType)[2]),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    child: Text(
                      DataHelper.generateSuggestionListAccordingToMassType(
                          massType)[2],
                      style: Constants.suggestionTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
