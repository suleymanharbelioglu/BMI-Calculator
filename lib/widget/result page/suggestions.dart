import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

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
            child: Text(
              "  Drink water a half hour before your meal",
              style: Constants.suggestionTextStyle,
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
            child: Text(
              "  Eat Only two meals per day and make sure that they contains a high protein",
              style: Constants.suggestionTextStyle,
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
            child: Text(
              "  Drink coffee or tea and Avoid sugary food",
              style: Constants.suggestionTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
