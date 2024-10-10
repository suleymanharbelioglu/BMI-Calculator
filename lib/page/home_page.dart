import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String age = "";
  String height = "";
  String weight = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.appBackgroundColur,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Constants.appColor.shade400,
        title: Text(
          "Body Mass Index",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 35,
                )),
          ),
        ],
      ),
      body: Column(
        children: [
          ageTextFormFiled(),
        ],
      ),
    );
  }

  Container ageTextFormFiled() {
    return Container(
          margin: EdgeInsets.all(20),
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
                  age = newValue!;
                  print("age : $age");
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
