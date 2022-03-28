import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../constant_things/appbar_widget.dart';
import '../../constant_things/footer.dart';
import '../../constant_things/nav_button.dart';
import 'Questions_profile01.dart';
//import '../widgets/appbar_widget.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
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
            'Hello Lorem! Ready for your new big opportunity',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/profile.png',
                ),
                radius: (10.0),
              ),
              SizedBox(
                width: 40.0,
              ),
              Text(
                'Answer a few question and start building your profile.',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
          const Divider(),
          Column(
            children: [
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/message_opened.png',
                ),
                radius: (10.0),
              ),
              SizedBox(
                width: 40.0,
              ),
              Text(
                'Apply for open roles or list services for clients to buy',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/safe_earn.jpg',
                ),
                radius: (10.0),
              ),
              SizedBox(
                width: 40.0,
              ),
              Text(
                'Get paid safely and know we’re there to help',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 40.0,
          ),
          Column(
            children: [
              Text(
                  'It only takes 5-10 minutes and you can edit it later. We’ll save as you go.'),
              SizedBox(
                height: 20.0,
              ),
              NavButton(
                widt: 10.0,
                color: Colors.blueGrey,
                heig: 5.0,
                txtcolor: Colors.white,
                page: Questions01(),
                text: 'Get Started',
                // onpressed: showMaterialModalBottomSheet(
                //   builder: (BuildContext context) {
                //     return Container();
                //   }, context: context,
                // ),
              ),
                SizedBox(
                  height: 5.0,
                ),

                BottomFooter(),

                // TextButton(
                //         onPressed: () {
                //           // Navigator.of(context).push(MaterialPageRoute(builder: (context)
                //           // {
                //           //   return const verifyAccount();
                //           // }
                //           // )
                //           // );
                //         },
                //         child: Text(
                //           "Get Started",
                //           style: GoogleFonts.heebo(
                //             color: Colors.white,
                //             letterSpacing: 0.5,
                //             fontSize: 20.0,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         style: TextButton.styleFrom(
                //             backgroundColor: Colors.blueGrey,
                //             padding: const EdgeInsets.symmetric(
                //                 vertical: 10.0, horizontal: 10),
                //             shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(30.0)))),
            ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   Size get preferredSize => const Size.fromHeight(50);
//
//   MyAppbar({
//     required this.img,
//   });
//
//   String img;
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.blueGrey,
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'Pro-Healer',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//           //  SizedBox(width:200.0),
//           CircleAvatar(
//             backgroundImage: AssetImage(
//               img,
//             ),
//             radius: (20.0),
//           ),
//         ],
//       ),
//     );
//   }
// }
