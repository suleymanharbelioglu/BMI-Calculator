import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';

class WeightTextFormFiled extends StatelessWidget {
  final Function onWeightToke;
  const WeightTextFormFiled({super.key, required this.onWeightToke});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.containerMargin,
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Enter Weight",
            style: Constants.inputLabelStyle,
          ),
          const SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter your Weight";
              }
              if (validatorNumber(value)) {
                return "Enter valid weight";
              }
              return null;
            },
            onSaved: (newValue) {
              onWeightToke(newValue);
            },
            maxLength: 3,
            decoration: InputDecoration(
              hintText: "Enter Weight",
              counterText: "",
              hintStyle: Constants.inputHintStyle,
              fillColor: Constants.textFiledColor,
              filled: true,
              suffix: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  "kg",
                  style: Constants.textFormFieldSuffixTextStyle,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
