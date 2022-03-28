import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:pro_healer_three_circles/constant_things/appbar_widget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../constant_things/nav_button.dart';

class Experience extends StatefulWidget {
  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    var heig = MediaQuery.of(context).size.height * 0.05;
    return Scaffold(
      appBar: MyAppbar(
        img: 'images/profile.png',
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'If you have relevent work experience, add it here',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: heig,
                      ),
                      Text(
                        'We need to get the sense of your education, Its quickest to import your information-you can edit before your profile go live.',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(80),
                            padding: EdgeInsets.all(70),
                            decoration: BoxDecoration(border: Border.all()),
                            child: FloatingActionButton(
                              onPressed: () {
                                Alert(
                                    context: context,
                                    title: "Add Work Experience",
                                    content: Container(
                                      padding: EdgeInsets.all(150),
                                      margin: EdgeInsets.all(150),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 30),
                                        child: Column(
                                          children: <Widget>[
                                            Text("Title: "),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(80)),
                                                ),
                                                hintText: "Ex-Chiropractor",
                                              ),
                                            ),
                                            Text("Company"),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(80)),
                                                ),
                                                hintText: "Ex-Chiropractor",
                                              ),
                                            ),
                                            // TextField(
                                            //
                                            //   decoration: InputDecoration(
                                            //     icon: Icon(Icons.account_circle),
                                            //     labelText: 'Username',
                                            //   ),
                                            // ),
                                            // TextField(
                                            //   obscureText: true,
                                            //   decoration: InputDecoration(
                                            //     icon: Icon(Icons.lock),
                                            //     labelText: 'Password',
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    buttons: [
                                      DialogButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text(
                                          "Add",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      )
                                    ]).show();
                              },
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                //SizedBox(width: 120.0,),
                //Text('welcome'),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Footer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    text: 'Next, Add Your Education',
                    txtcolor: Colors.white,
                    page: Experience(),
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
