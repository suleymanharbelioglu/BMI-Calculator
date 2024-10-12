import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class HeightTextFormFiled extends StatelessWidget {
  final Function onHeightToke;
  const HeightTextFormFiled({super.key, required this.onHeightToke});

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
            "Enter Height",
            style: Constants.inputLabelStyle,
          ),
          SizedBox(height: 10),
          TextFormField(
            maxLength: 3,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value!.length == 0) {
                return "Enter your Height";
              }
              return null;
            },
            onSaved: (newValue) {
              onHeightToke(newValue);
            },
            decoration: InputDecoration(
              counterText: "",
              hintText: "Enter Height",
              hintStyle: Constants.inputHintStyle,
              fillColor: Constants.textFiledColor,
              suffix: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  "cm",
                  style: Constants.textFormFieldSuffixTextStyle,
                ),
              ),
              filled: true,
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
