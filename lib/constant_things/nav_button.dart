import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavButton extends StatelessWidget {
  var page;
  String text;
  double widt;
  double heig;
  Color color;
  Color txtcolor;
  var onpressed;

  NavButton(
      { this.page,
        required this.text,
        required this.widt,
        required this.color,
        required this.txtcolor,
        required this.heig,
        this.onpressed
      });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          if(onpressed>1)
            {
              return onpressed;
            }
          else
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

