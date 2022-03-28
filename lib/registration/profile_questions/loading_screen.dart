import 'package:flutter/material.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/questions_profile02.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/resume_building.dart';

import '../../constant_things/appbar_widget.dart';
import '../../constant_things/nav_button.dart';
//import 'package:loginpageui/widgets/appbar_widget.dart';

class loadingScreen extends StatefulWidget {
  // const Questions01({Key? key}) : super(key: key);

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        img: 'images/profile.png',
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'loading',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              NavButton(
                widt: 10.0,
                color: Colors.blueGrey,
                heig: 5.0,
                txtcolor: Colors.white,
                page: resumeScreen(),
                text: 'Get Started',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// NavButton(widt: 10.0, color:Colors.blueGrey, heig: 5.0, txtcolor: Colors.white, page: Questions01(), text: 'Get Started',),
