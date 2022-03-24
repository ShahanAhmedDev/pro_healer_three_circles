import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';

class BottomFooter extends StatelessWidget {
  const BottomFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Expanded(
        
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Footer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('About Us'),
                    Text('Trust, Safety & Security'),
                    Text('Term of Service'),
                    Text('Accessibility'),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Feedback"),
                    Text('Help & Support'),
                    Text('Privacy Policy'),
                    Text('Desktop App'),
                  ],
                ),
                SizedBox(height: 5.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Community"),
                    Text("Upwork Foundation"),
                    Text("CA Notice at Collection"),
                    Text("Cookie Policy"),
                  ],
                ),
                SizedBox(height: 5.0),

                Row(
                  children: [
                    SizedBox(width: 150.0,),
                    Text(
                      'Enterprise Solutions',
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 40.0,),
                        Text('Follow us'),
                        SizedBox(width: 10.0,),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/instagram_logo.png'
                          ),
                          radius: (10.0),
                        ),
                        SizedBox(width: 10.0,),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/linkedin.png'
                          ),
                          radius: (10.0),
                        ),
                        SizedBox(width: 10.0,),
                        //  Text('Mobile Apps'),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/facebook_icon.png'
                          ),
                          radius: (10.0),
                        ),
                        SizedBox(width: 10.0,),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/youtube_icon.png'
                          ),
                          radius: (10.0),
                        ),
                        SizedBox(width: 10.0,),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/twitter_icon.png'
                          ),
                          radius: (10.0),
                        ),
                      ],
                    ),
                    Row(
                     // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Mobile Apps'),
                        SizedBox(width: 10.0,),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/android_icon.png'
                          ),
                          radius: (10.0),
                        ),
                        SizedBox(width: 10.0,),
                        CircleAvatar(
                          backgroundImage: AssetImage('images/apple_icon.png'
                          ),
                          radius: (10.0),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                  Text('@ 2022 Pro-Healer',textAlign: TextAlign.center,),
              ],
            ),
            padding: EdgeInsets.all(5.0),
          ),
        ),
      ),
    );
  }
}
