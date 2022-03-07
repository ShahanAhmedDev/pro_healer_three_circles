import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:google_fonts/google_fonts.dart';

//import 'package:loginpageui/verification.dart';
//import 'package:loginpageui/verification.dart';
import 'package:pro_healer_three_circles/registration/verification.dart';

import '../constant_things/appbar_widget.dart';
import '../constant_things/nav_button.dart';
import 'anmition/fadeanimation.dart';

class firstScreen extends StatefulWidget {
  // const firstScreen({Key? key}) : super(key: key);

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  String? countryValue;
  String? stateValue;
  String? cityValue;
  bool value1 = false;
  bool value2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        img: 'images/profile.png',
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Complete your free account setup',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              //
              SelectState(
                dropdownColor: Colors.blue,
                onCountryChanged: (value) {
                  setState(() {
                    countryValue = value;
                  });
                },
                onStateChanged: (value) {
                  setState(() {
                    stateValue = value;
                  });
                },
                onCityChanged: (value) {
                  setState(() {
                    cityValue = value;
                  });
                },
              ),
              Text(
                'I want to:',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Hire Physician',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(width: 10.0),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Work as Physician',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CheckboxListTile(
                    title: Text(
                        "Yes! Send me genuinely useful emails every now and then."),
                    //    <-- label
                    value: value1,
                    onChanged: (value) {
                      setState(() {
                        this.value1 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  CheckboxListTile(
                    title: Text(
                        "Yes! I understand and agree to the Pro-healer term of servie, including user agreement and privacy policy."),
                    //    <-- label
                    value: value2,
                    onChanged: (value) {
                      setState(() {
                        this.value2 = value!;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ],
              ),
              NavButton(
                widt: 10.0,
                color: Colors.blueGrey,
                heig: 5.0,
                txtcolor: Colors.white,
                page: verifyAccount(),
                text: 'SignUp',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
