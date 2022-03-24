import 'package:flutter/material.dart';

import '../../constant_things/appbar_widget.dart';
import '../../constant_things/footer.dart';
import '../../constant_things/nav_button.dart';
import 'Questions_profile01.dart';
import 'loading_screen.dart';
//import 'package:loginpageui/widgets/appbar_widget.dart';

class Questions02 extends StatefulWidget {
  // const Questions01({Key? key}) : super(key: key);

  @override
  State<Questions02> createState() => _Questions02State();
}

class _Questions02State extends State<Questions02> {
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
                'hello',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              NavButton(widt: 10.0, color:Colors.blueGrey, heig: 5.0, txtcolor: Colors.white, page:
              loadingScreen(), text: 'Get Started',),
              SizedBox(height: 10.0,),
              BottomFooter(),

            ],


          ),


        ),

      ),


    );
  }
}
