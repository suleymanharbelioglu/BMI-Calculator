import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class GenderDropdown extends StatefulWidget {
  final Function onGenderChoosen;
  const GenderDropdown({super.key, required this.onGenderChoosen, });

  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  String? gender = null;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 5,
        top: 5,
        bottom: 5,
      ),
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Constants.textFiledColor,
      ),
      child: DropdownButton<String>(
        iconEnabledColor: Constants.appColor,
        iconDisabledColor: Constants.appColor,
        iconSize: 30,
        underline: SizedBox(),
        hint: Text("Choose Gender"),
        value: gender,
        items: [
          DropdownMenuItem(
            child: Text("Male"),
            value: "Male",
          ),
          DropdownMenuItem(
            child: Text("Female"),
            value: "Female",
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
