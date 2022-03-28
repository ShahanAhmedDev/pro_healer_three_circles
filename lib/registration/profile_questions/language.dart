import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pro_healer_three_circles/constant_things/appbar_widget.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../constants/SearchDropDown.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  late ScrollController controller;
  late String val;
  late String language;

  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.02;
    return Scaffold(
      appBar: MyAppbar(
        img: "images/profile.png",
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        controller: controller,
        child: ListView.builder(
          controller: controller,
          itemCount: 1,
          itemBuilder: (context, i) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 200.0, vertical: 100 ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Looking Good. Next, tell us which languages you speak.",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 70,
                      ),
                    ),
                    SizedBox(
                      height: height,
                    ),
                    Text(
                        "Pro Healer si global, so clients are interested to know what languages you speak. English is must, but do you speak any other languages?"),
                    SizedBox(
                      height: height,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 100.0),
                      child: Column(
                        children: [
                          Text("languages"),
                          SizedBox(
                            height: height,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 250.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                hintText: "Dentist",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height,
                          ),
                          Text("Proficiency"),
                          SizedBox(
                            height: height,
                          ),
                          SearchDropDown(height: height)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
