import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class AgeDropdown extends StatefulWidget {
  final Function onAgeChoosen;
  const AgeDropdown({super.key, required this.onAgeChoosen});

  @override
  State<AgeDropdown> createState() => _AgeDropdownState();
}

class _AgeDropdownState extends State<AgeDropdown> {
  String? age;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 5,
        right: 20,
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
        hint: const Text(
          "Choose Age",
        ),
        value: age,
        items: const [
          DropdownMenuItem(
            value: "old",
            child: Text("age > 50"),
          ),
          DropdownMenuItem(
            value: "adult",
            child: Text("50 > age > 24"),
          ),
          DropdownMenuItem(
            value: "teen",
            child: Text("24 > age > 16"),
          ),
          DropdownMenuItem(
            value: "child",
            child: Text("16 > age"),
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
