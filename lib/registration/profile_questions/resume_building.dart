import 'package:flutter/material.dart';
//import 'package:pro_healer_three_circles/registration/profile_questions/new_profile.dart';
import '../../constant_things/appbar_widget.dart';
import '../../constant_things/footer.dart';
import '../../constant_things/nav_button.dart';
import '../verification.dart';
import 'Questions_profile01.dart';
import 'loading_screen.dart';
import 'new_profile.dart';
//import 'package:loginpageui/widgets/appbar_widget.dart';

class resumeScreen extends StatefulWidget {
  // const Questions01({Key? key}) : super(key: key);

  @override
  State<resumeScreen> createState() => _resumeScreenState();
}

class _resumeScreenState extends State<resumeScreen> {
  // bool value1 = false;
  // bool value2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        img: 'images/profile.png',
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'How would you like to tell us about yourself?',
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50.0),
                        child: Text(
                          'We need to get the sense of your education, Its quickest to import your information-you can edit before your profile go live.',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              NavButton(
                                widt: 10.0,
                                color: Colors.blueGrey,
                                heig: 5.0,
                                txtcolor: Colors.white,
                                page: verifyAccount(),
                                text: 'LinkedIn',
                              ),
                              SizedBox(width: 20.0),
                              NavButton(
                                page:NewProfile(),
                                widt: 10.0,
                                color: Colors.blueGrey,
                                heig: 5.0,
                                txtcolor: Colors.white,
                                text: 'Build your Resume',
                                // onpressed: Form(child: Container(
                                //   child: Column(
                                //     children: [
                                //       Text("hello")
                                //     ],
                                //   ),
                                // ),
                                // ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  //SizedBox(width: 120.0,),
                  //Text('welcome'),
                ],

              ),
            ),
            //SizedBox(height: 10.0),
            Expanded(
                child: BottomFooter()
            ),
          ],

        ),
      ),
    );
  }
}
