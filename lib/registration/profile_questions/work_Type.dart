import 'package:flutter/material.dart';
import 'package:pro_healer_three_circles/constant_things/appbar_widget.dart';

class WorkType extends StatefulWidget {
  //const WorkType({Key? key}) : super(key: key);
  String dropdownvalue = 'Item 1';

  @override
  State<WorkType> createState() => _WorkTypeState();
}

class _WorkTypeState extends State<WorkType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        img: 'images/profile.png',
      ),
      body: Column(
        children: [
          Text(
            'Tell us about the work you do. what is the main service you offer?',
            style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20,),
          Text('Relevent experiance can help your profile stand out, Choose the categories that best describes your work.'),
      SizedBox(height: 20.0,),
      // DropdownButton(value: selectedValue,
      //     items: dropdownItems),
        ],
      ),
    );
  }
}
