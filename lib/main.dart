import 'package:flutter/material.dart';
import 'package:pro_healer_three_circles/registration/account_setup.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/BioPage.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/Experience.dart';
//import 'package:pro_healer_three_circles/registration/profile_questions/Experience.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/Questions_profile01.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/create_profile.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/new_profile.dart';
//import 'package:pro_healer_three_circles/registration/profile_questions/new_profile.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/resume_building.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/skill.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/work_Charges.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/work_Type.dart';
import 'package:pro_healer_three_circles/registration/verification.dart';

import 'constants/Api_strings.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:WorkType(),
    );
  }
}

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Center(child: Text('Start Building Guys.')),
        ),
        Text(ApiStrings.SignIn_Url)
      ],
    );
  }
}
