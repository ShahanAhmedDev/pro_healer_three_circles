import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavButton extends StatelessWidget {
  Widget page;
  String text;
  double widt;
  double heig;
  Color color;
  Color txtcolor;

  NavButton(
      {required this.page,
      required this.text,
      required this.widt,
      required this.color,
      required this.txtcolor,
      required this.heig});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return page;
          }));
        },
        child: Text(
          text,
          style: GoogleFonts.heebo(
            color: txtcolor,
            letterSpacing: 0.5,
            fontSize: 20.0,
            // fontWeight: FontWeight.bold
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: color,
            padding: EdgeInsets.symmetric(vertical: heig, horizontal: widt),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))));
  }
}


