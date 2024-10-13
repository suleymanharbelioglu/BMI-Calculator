import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class GenderDropdown extends StatefulWidget {
  final Function onGenderChoosen;
  const GenderDropdown({super.key, required this.onGenderChoosen, });

  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 5,
        top: 5,
        bottom: 5,
      ),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constants.textFiledColor,
      ),
      child: DropdownButton<String>(
        iconEnabledColor: Constants.appColor,
        iconDisabledColor: Constants.appColor,
        iconSize: 30,
        underline: const SizedBox(),
        hint: const Text("Choose Gender"),
        value: gender,
        items: const [
          DropdownMenuItem(
            value: "Male",
            child: Text("Male"),
          ),
          DropdownMenuItem(
            value: "Female",
            child: Text("Female"),
          ),
        ],
        onChanged: (value) {
          setState(() {
            gender = value;
            widget.onGenderChoosen(gender);
          });
        },
      ),
    );
  }
}
