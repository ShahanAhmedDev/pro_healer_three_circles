import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/BioPage.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/Experience.dart';
import 'package:pro_healer_three_circles/registration/profile_questions/skill.dart';
import '../../constant_things/appbar_widget.dart';
import '../../constant_things/footer.dart';
import '../../constant_things/nav_button.dart';
import '../verification.dart';
import 'Questions_profile01.dart';
import 'loading_screen.dart';
//import 'package:loginpageui/widgets/appbar_widget.dart';

class SkillScreen extends StatefulWidget {
  // const Questions01({Key? key}) : super(key: key);

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  // bool value1 = false;
  // bool value2 = false;
  @override
  Widget build(BuildContext context) {
    var heig = MediaQuery.of(context).size.height * 0.05;
    var _controller = TextEditingController();
    return Scaffold(
      appBar: MyAppbar(
        img: 'images/profile.png',
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Got it. Now, add The Title to tell the world what would you do.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
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
                    Text('Skills'),
                    SizedBox(
                      width: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 200.0),
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          hintText: "Enter your skills",
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add Skills:',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: _controller.clear,

                          icon: Icon(
                            Icons.add,
                            size: 24.0,
                          ),
                          label: Text('More Skills'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //SizedBox(width: 120.0,),
              //Text('welcome'),
            ],
          ),
          //SizedBox(height: 10.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Footer(
                child: Row(
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
                      page: BioScreen(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
