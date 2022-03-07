import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

//import 'package:footer/footer.dart';
//import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/create_profile.dart';
import '../constant_things/appbar_widget.dart';
import '../constant_things/footer.dart';
import '../constant_things/nav_button.dart';
import 'anmition/fadeanimation.dart';

class verifyAccount extends StatefulWidget {
  const verifyAccount({Key? key}) : super(key: key);

  @override
  State<verifyAccount> createState() => _verifyAccountState();
}

class _verifyAccountState extends State<verifyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        // backgroundColor: Colors.blueGrey,
        img: 'images/profile.png',
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    // {
                    //   return const verifyAccount();
                    // }
                    // )
                    // );
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.heebo(
                      color: Colors.white,
                      letterSpacing: 0.5,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    // alignment: Alignment.topRight,
                      backgroundColor: Colors.blueGrey,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)))),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left:100.0, top: 5.0, right: 100.0, bottom: 5.0),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black, // Set border color
                      width: 1.0,
                    ), // Set border width
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/computer.jpg',
                      ),
                      radius: (50.0),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    // ),
                    Text(
                      'Verify your email to proceed',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu,',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    NavButton(
                      widt: 10.0,
                      color: Colors.blueGrey,
                      heig: 5.0,
                      txtcolor: Colors.white,
                      page: CreateProfile(),
                      text: 'Resend Verification Email',
                    ),
                  ],
                ),
                ),
                SizedBox(height: 40.0,),
               BottomFooter(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

