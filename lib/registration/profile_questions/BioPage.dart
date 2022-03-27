import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:pro_healer_three_circles/constant_things/appbar_widget.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/skill.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../constant_things/nav_button.dart';

class BioScreen extends StatefulWidget {
  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
  @override
  Widget build(BuildContext context) {
    var heig = MediaQuery.of(context).size.height * 0.05;
    return Scaffold(
      appBar: MyAppbar(
        img: 'images/profile.png',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Great! Now write a bio to tell the world about yourself',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 80,right: 80),
              child: new TextField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Describe your top skills, experiances and interest, This is one of the first thing that clients see in your profile.',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 40, horizontal: 20),

                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text('At least 100 characters.',textAlign: TextAlign.end,),
            SizedBox(
              height: 30.0,
            ),
        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("back")),
                            NavButton(
                              color: Colors.lightBlueAccent,
                              heig: 10,
                              widt: 10,
                              text: 'Next, Add Your Experience',
                              txtcolor: Colors.white,
                              page: SkillScreen(),
                            )
                          ],
                        ),
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     Row(
      //       children: [
      //         Expanded(
      //           child: Column(
      //             children: [
      //
      //               Row(mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Column(
      //                     children: [
      //                       Text(
      //                         'If you have relevent work experience, add it here',
      //                         textAlign: TextAlign.start,
      //                         style: TextStyle(
      //                           fontSize: 20.0,
      //                           fontWeight: FontWeight.bold,
      //                           color: Colors.black,
      //                         ),
      //                       ),
      //                       SizedBox(
      //                         height: heig,
      //                       ),
      //                       Text(
      //                         'We need to get the sense of your education, Its quickest to import your information-you can edit before your profile go live.',
      //                         style: TextStyle(
      //                           fontSize: 20.0,
      //                           fontWeight: FontWeight.bold,
      //                           color: Colors.grey[700],
      //                         ),
      //                       ),
      //                       SizedBox(
      //                         height: 20,
      //                       ),
      //                       Column(
      //                         crossAxisAlignment: CrossAxisAlignment.start,
      //                         children: [
      //                           new TextField(
      //                             keyboardType: TextInputType.multiline,
      //
      //                             maxLines: 10,
      //                           ),
      //                           // Container(
      //                           //   margin: EdgeInsets.only(bottom: 20),
      //                           //   padding: EdgeInsets.only(left: 500, right: 500,top: 60,bottom: 100,),
      //                           //   decoration: BoxDecoration(border: Border.all()),
      //                           //
      //                           // ),
      //                         ],
      //                       ),
      //                     ],
      //                   ),
      //                   Container(
      //                   //  margin: EdgeInsets.only(bottom: 20),
      //                     padding: EdgeInsets.all(80.0),
      //                     decoration: BoxDecoration(border: Border.all()),
      //                   ),
      //                 ],
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 crossAxisAlignment: CrossAxisAlignment.end,
      //                 children: [
      //                   TextButton(
      //                       onPressed: () {
      //                         Navigator.pop(context);
      //                       },
      //                       child: Text("back")),
      //                   NavButton(
      //                     color: Colors.lightBlueAccent,
      //                     heig: 10,
      //                     widt: 10,
      //                     text: 'Next, Add Your Experience',
      //                     txtcolor: Colors.white,
      //                     page: SkillScreen(),
      //                   )
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
