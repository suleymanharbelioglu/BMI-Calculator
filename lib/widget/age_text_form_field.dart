import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class AgeTextFormField extends StatelessWidget {
  const AgeTextFormField({super.key});

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
            "Enter Age",
            style: Constants.inputLabelStyle,
          ),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null) {
                return "Enter your age";
              }
              return null;
            },
            onSaved: (newValue) {
              print("age : $newValue");
            },
            decoration: InputDecoration(
              hintText: "Enter Age",
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
