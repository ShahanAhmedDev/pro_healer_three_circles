import 'package:flutter/material.dart';
import 'package:pro_healer_three_circles/views/Authentication/LogIn.dart';
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

        primarySwatch: Colors.blue,
      ),
      home: LogInScreen(),
    );
  }
}
