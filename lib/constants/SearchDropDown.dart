
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../registration/profile_questions/language.dart';

class SearchDropDown extends StatefulWidget {
  const SearchDropDown({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;
  // static List<String> mainlist=["Beginner","Intermediate", "Professional"];

  @override
  State<SearchDropDown> createState() => _SearchDropDownState();
}

class _SearchDropDownState extends State<SearchDropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 250.0),
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.arrow_drop_down),
          border: OutlineInputBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(20)),
          ),
          hintText: "",
        ),
        onTap: () {
          // mainlist;
          showCustomModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),
            builder: (context) => Container(),
            containerWidget: (BuildContext context,
                Animation<double> animation,
                Widget child) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 380.0, horizontal: 480),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {

                          language(String language, String val)
                          {
                            if (language==true){
                              return(val);
                            }
                          };
                          Navigator.pop(context, MaterialPageRoute(builder:
                              (context)=> Language()));
                        },
                        child: Text("Beginner",
                            style:
                            TextStyle(fontSize: 30)),
                      ),
                      SizedBox(
                        height: widget.height,
                      ),
                      TextButton(
                        onPressed: () {Navigator.pop(context, MaterialPageRoute(builder:
                            (context)=> Language()));},
                        child: Text(
                          "Intermediate",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: widget.height,
                      ),
                      TextButton(
                        onPressed: () {Navigator.pop(context, MaterialPageRoute(builder:
                            (context)=> Language()));},
                        child: Text(
                          "Professional",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
