import 'package:flutter/material.dart';
import 'package:pro_healer_three_circles/constant_things/appbar_widget.dart';

import '../../constants/SearchDropDown.dart';

class WorkYouDo extends StatefulWidget {
  const WorkYouDo({Key? key}) : super(key: key);

  @override
  State<WorkYouDo> createState() => _WorkYouDoState();
}

class _WorkYouDoState extends State<WorkYouDo> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.02;
    return Scaffold(
      appBar: MyAppbar(
        img: "images/profile.png",
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200.0, vertical: 100 ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tell us about your work you do. What is main service you offer?",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 70,
                ),
              ),
              SizedBox(
                height: height,
              ),
              Text(
                  "Relevent experience can help your profile stand out. Chose the catagories that best describe the type of work you do so we can show you to the right type of clients in search result."),
              SearchDropDown(height: height)
            ],
          ),
        ),
      ),
    );
  }
}
