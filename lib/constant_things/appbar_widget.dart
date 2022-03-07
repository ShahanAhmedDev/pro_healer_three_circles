import 'package:flutter/material.dart';
class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);

  MyAppbar({
    required this.img,
  });

  String img;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Pro-Healer',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          //  SizedBox(width:200.0),
          CircleAvatar(
            backgroundImage: AssetImage(
              img,
            ),
            radius: (20.0),
          ),
        ],
      ),
    );
  }
}