import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';

class WeightTextFormFiled extends StatelessWidget {
  final Function onWeightToke;
  const WeightTextFormFiled({super.key, required this.onWeightToke});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Constants.ContainerMargin,
      // height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: Colors.yellow.shade100,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Weight",
            style: Constants.inputLabelStyle,
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.length == 0) {
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
