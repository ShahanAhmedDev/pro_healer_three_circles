import 'package:avatar_glow/avatar_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/color_constant.dart';
import '../../constants/nav_button.dart';
import '../Authentication/LogIn.dart';
import '../Authentication/SignUp.dart';
import 'delayed-animation.dart';
//import 'package:reflectly_flutter_app/delayed_animation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(Splash());
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width * 0.08;
    final color = kcolor;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          //Color(0xFF8185E2),
          body: Center(
            child: Column(
              children: <Widget>[
                AvatarGlow(
                  endRadius: 90,
                  duration: Duration(seconds: 2),
                  glowColor: kcolor,
                  repeat: true,
                  repeatPauseDuration: Duration(seconds: 2),
                  startDelay: Duration(seconds: 1),
                  child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        child: Image.asset("images/3circlesLogo.jpg"),
                        radius: 50.0,
                      )),
                ),
                // DelayedAnimation(
                //   child: Text(
                //     "Hello",
                //     style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 35.0,
                //         color: color),
                //   ),
                //   delay: delayedAmount + 1000,
                // ),
                DelayedAnimation(
                  child: Text(
                    "Welcome To",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: color),
                  ),
                  delay: delayedAmount + 2000,
                ),
                SizedBox(
                  height: 30.0,
                ),
                DelayedAnimation(
                  child: Text(
                    "Pro-Healer",
                    style: TextStyle(fontSize: 20.0, color: color),
                  ),
                  delay: delayedAmount + 3000,
                ),
                // DelayedAnimation(
                //   child: Text(
                //     "",
                //     style: TextStyle(fontSize: 20.0, color: color),
                //   ),
                //   delay: delayedAmount + 3000,
                // ),
                SizedBox(
                  height: 100.0,
                ),
                DelayedAnimation(
                  child: NavButton(txtcolor: Colors.white,
                    widt: width,
                    text: 'Log In',
                    page: LogInScreen(),
                    color: kcolor,
                    heig: 22,),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => const LogInScreen()),
                  //     );
                  //   },
                  //   onTapDown: onTapDown,
                  //   onTapUp: onTapUp,
                  //   child: Transform.scale(
                  //     scale: _scale,
                  //     child: animatedButtonUI,
                  //   ),
                  // ),
                  delay: delayedAmount + 4000,
                ),
                SizedBox(
                  height: 10.0,
                ),
                // DelayedAnimation(
                //   child: Text(
                //     "Don't have an Account?".toUpperCase(),
                //     style: TextStyle(
                //         fontSize: 20.0,
                //         fontWeight: FontWeight.bold,
                //         color: color),
                //   ),
                //   delay: delayedAmount + 5000,
                // ),
                DelayedAnimation(
                  child: NavButton(
                    page: SignUpScreen(),
                    text: 'Sign Up',
                    widt: width,
                    color: kcolor,
                    //Color(0xffade2fb),
                    txtcolor: Colors.white,
                    heig: 22,
                  ),
                  // Text("Sign Up".toUpperCase(),
                  // style: TextStyle(
                  //     fontSize: 20.0,
                  //     fontWeight: FontWeight.bold,
                  //     color: color
                  // )), onPressed: () { Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const SignUpScreen()),); },
                  // ),
                  delay: delayedAmount + 5000,
                ),
              ],
            ),
          )
        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
        //     SizedBox(
        //       height: 20.0,
        //     ),
        //      Center(

        //   ),
        //   ],

        // ),
      ),
    );
  }
//animated login button
//Widget get animatedButtonUI => Container(
//         height: 60,
//         width: 270,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100.0),
//           color: kcolor,
//         ),
//         child: Center(
//           child: Text(
//             'Log In',
//             style: GoogleFonts.heebo(
//                 fontSize: 20.0,
//                 // fontWeight: FontWeight.bold,
//                 color: Colors.white
//                 //Color(0xFF8185E2),
//                 ),
//           ),
//         ),
//       );
//
  void onTapDown(TapDownDetails details) {
     _controller.forward();
   }

 void onTapUp(TapUpDetails details) {
     _controller.reverse();
   }
}
