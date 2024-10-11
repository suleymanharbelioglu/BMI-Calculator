import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class HeightTextFormFiled extends StatelessWidget {
  const HeightTextFormFiled({super.key});

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
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null) {
                return "Enter your Height";
              }
              return null;
            },
            onSaved: (newValue) {
              print("Height : $newValue");
            },
            decoration: InputDecoration(
              hintText: "Enter Height",
              hintStyle: Constants.inputHintStyle,
              fillColor: Constants.textFiledColor,
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
