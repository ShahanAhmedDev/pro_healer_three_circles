import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant_things/appbar_widget.dart';
import '../../constant_things/nav_button.dart';
import 'BioPage.dart';

class WorkCharges extends StatefulWidget {
  const WorkCharges({Key? key}) : super(key: key);

  @override
  State<WorkCharges> createState() => _WorkChargesState();
}

class _WorkChargesState extends State<WorkCharges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        img: 'images/profile.png',
      ),
      body: Column(
        children: [
          Text(
            'How much you would like to be paid monthly?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
          //  crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Monthly Charges',textAlign: TextAlign.center,),
              // SizedBox(
              //   width: 20.0,
              // ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 400.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: "Dentist",
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),

          Divider(),
          SizedBox(height: 20,),
          Row(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Extra Hours charges'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 400.0),
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
              ),
            ],
          ),
          //SizedBox(height: 20,),
          Divider(),
          SizedBox(height: 20,),
          Row(
            children: [

              Text('You will recieve',),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 400.0),
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
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(100.0),

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
          //SizedBox(height: 20,),
        ],

      ),
    );
  }
}
