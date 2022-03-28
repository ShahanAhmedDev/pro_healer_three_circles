import 'package:flutter/material.dart';
import 'package:pro_healer_three_circles/registration/account_setup.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/BioPage.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/Education.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/Experience.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/Questions_profile01.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/WorkYouDo.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/create_profile.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/language.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/loading_screen.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/new_profile.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/questions_profile02.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/resume_building.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/skill.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/work_Charges.dart';
import 'package:pro_healer_three_circles/registration/verification.dart';
import 'package:pro_healer_three_circles/views/Authentication/LogIn.dart';
import 'package:pro_healer_three_circles/views/Authentication/SignUp.dart';
import 'package:pro_healer_three_circles/views/Landing_screen/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/twenty',
      routes: {
        '/':(context) => Splash(),
        '/second' :(context) => SignUpScreen(),
        '/third' :(context) => LogInScreen(),
        '/fourth' : (context) => firstScreen(),
        '/fifth' : (context) => verifyAccount(),
        '/sixth' : (context) => CreateProfile(),
        '/seventh' : (context) => Questions01(),
        '/eigth' : (context) => Questions02(),
        '/nineth' : (context) => WorkYouDo(), //18 par bhi yehi he
        '/tenth' : (context) => loadingScreen(),
        '/eleventh' : (context) => resumeScreen(),
        '/twelfth' : (context) => NewProfile(),
        '/thirteen' : (context) => Experience(),
        '/fourteen' : (context) => Education(),
        '/fifteen' : (context) => Language(),
        '/sixteen' : (context) => SkillScreen(),
        '/seventeen' : (context) => BioScreen(),
        '/eighteen' : (context) => WorkYouDo(),
        '/nineteen' : (context) => WorkCharges(),
        '/twenty' : (context) => Language(),


    },
      // home: verifyAccount(),
    );
  }
}