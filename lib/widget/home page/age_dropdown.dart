import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class AgeDropdown extends StatefulWidget {
  final Function onAgeChoosen;
  const AgeDropdown({super.key, required this.onAgeChoosen});

  @override
  State<AgeDropdown> createState() => _AgeDropdownState();
}

class _AgeDropdownState extends State<AgeDropdown> {
  String? age = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        right: 20,
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
        hint: Text(
          "Choose Age",
        ),
        value: age,
        items: [
          DropdownMenuItem(
            child: Text("age > 50"),
            value: "old",
          ),
          DropdownMenuItem(
            child: Text("50 > age > 24"),
            value: "adult",
          ),
          DropdownMenuItem(
            child: Text("24 > age > 16"),
            value: "teen",
          ),
          DropdownMenuItem(
            child: Text("16 > age"),
            value: "child",
          ),
        ],
        onChanged: (value) {
          setState(() {
            age = value;
            widget.onAgeChoosen(age);
          });
        },
      ),
    );
  }
}
