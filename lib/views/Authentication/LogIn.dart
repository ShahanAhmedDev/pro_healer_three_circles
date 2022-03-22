import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/color_constant.dart';
import '../../constants/nav_button.dart';
import 'SignUp.dart';
import 'animations.dart';

enum Gender {
  Email,
  password,
}

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  // const kSize= margin:EdgeInsets.only(right: 230.0);
  Color enabled = const Color(0xFF827F8A);
  Color enabledtxt = Colors.white;
  Color deaible = kcolor;
  Color backgroundColor = const Color(0x62d8d8d8);
  bool ispasswordev = true;
  Gender? selected;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    var wi = MediaQuery.of(context).size.width * 0.75;
    return Container(
      child: Scaffold(
          // appBar: PreferredSize(preferredSize: Size.fromHeight(130.0),
          //   child: AppBar(
          //     title: Expanded(
          //       flex: 1,
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Container(
          //             height: 120,
          //             child: Image.asset(
          //               'images/3circlesLogo.jpg',
          //               //fit: BoxFit.fitHeight,
          //               cacheHeight: 100,
          //               width: 100,
          //               scale: .1,
          //
          //             ),
          //           ),
          //           Expanded(
          //             flex: 1,
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.end,
          //               children: [
          //                 Container(
          //                     padding: const EdgeInsets.all(8.0), child: Text('Pro-Health')),
          //               ],
          //             ),
          //           ),
          //           FadeAnimation(
          //             delay: 1,
          //             child: Column(
          //
          //               crossAxisAlignment: CrossAxisAlignment.end,
          //               children: [
          //                 Text("Don't have an account?",
          //                     style: GoogleFonts.heebo(
          //                       fontSize: 10,
          //                       color: Colors.white,
          //                       letterSpacing: 0.5,
          //                     )),
          //                 GestureDetector(
          //                   onTap: () {
          //                     Navigator.of(context)
          //                         .push(MaterialPageRoute(builder: (context) {
          //                       return const SignUpScreen();
          //                     }));
          //                   },
          //                   child: Text("Sign up",
          //                     style: GoogleFonts.heebo(
          //                       //color: const Color(0xFF0DF5E4).withOpacity(0.9),
          //                       color: Colors.white.withOpacity(0.9),
          //                       fontWeight: FontWeight.bold,
          //                       letterSpacing: 0.5,
          //                     ),),
          //                 ),
          //               ],
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          //   appBar:
          //PreferredSize(
          //     preferredSize: Size.fromHeight(100.0),
          // child:AppBar(
          //       title:Padding(padding:const EdgeInsets.only(top: 80.0,),
          //       child:Column(
          //         children: [
          //           Image.asset('images/3circlesLogo.jpg',fit: BoxFit.cover,height: 40.0,),
          //         ],
          //       ),
          //       ),
          //   backgroundColor: Colors.white,
          // ),
          //
          //
          //     ),
          //   backgroundColor: const Color(0xFF1F1A30),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // FadeAnimation(
                      //   delay: 1,
                      //   child: Row(
                      //     children: [
                      //       Padding(
                      //         padding: const EdgeInsets.only(left: 10 ),
                      //         child:
                      //       ),
                      //     ],
                      //   ),
                      //),
                      FadeAnimation(
                        delay: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const LogInScreen();
                                  }));
                                },
                                child: Image.asset(
                                  "images/3circlesLogo.jpg",
                                  width: 150,
                                  height: 150,
                                  alignment: Alignment.center,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: wi,
                            ),
                            Column(
                              children: [
                                Text("Don't have an account?",
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.heebo(
                                      fontSize: 10,
                                      color: kcolor,
                                      letterSpacing: 0.5,
                                    )),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const SignUpScreen();
                                    }));
                                  },
                                  child: FadeAnimation(
                                    delay: 1,
                                    child: NavButton(
                                      text: 'Sign Up',
                                      page: SignUpScreen(),
                                      widt: 20,
                                      color: kcolor,
                                      txtcolor: Colors.white,
                                      heig: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: he * 0.1,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: we,
                      height: he,
                      child: Column(
                        children: <Widget>[
                          // FadeAnimation(
                          //
                          //   // delay: 0.8,
                          //   // //child: Image.asset('images/3circlesLogo.jpg'),
                          //   // child: CachedNetworkImage(
                          //   //
                          //   //   imageUrl:
                          //   //       "https://cdni.iconscout.com/illustration/premium/thumb/job-starting-date-2537382-2146478.png",
                          //   //   width: we * 0.9,
                          //   //   height: he * 0.4,
                          //   // ),
                          // ),
                          FadeAnimation(
                            delay: 1,
                            child: Container(
                              // margin: const EdgeInsets.only(right: 230.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Login",
                                style: GoogleFonts.heebo(
                                    color: kcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    letterSpacing: 2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: he * 0.01,
                          ),
                          FadeAnimation(
                            delay: 1,
                            child: Container(
                              // margin: const EdgeInsets.only(right: 150.0),
                              alignment: Alignment.center,
                              child: Text(
                                "Please Sign-In to Continue",
                                style: GoogleFonts.heebo(
                                    color: kcolor,
                                    letterSpacing: 0.5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: he * 0.04,
                          ),
                          FadeAnimation(
                            delay: 1,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 70.0),

                              //width: we * 0.9,
                              // height: he * 0.071,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: selected == Gender.Email
                                    ? enabled
                                    : backgroundColor,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              width: 400.0,
                              child: TextFormField(
                                initialValue: _emailController.text,
                                onChanged: (val){
                                  setState(() {
                                    _emailController.text = val;
                                    print('----------');
                                    print(_emailController.text);
                                    print('----------');

                                  });
                                },
                                onTap: () {
                                  setState(() {
                                    selected = Gender.Email;
                                  });
                                },
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: selected == Gender.Email
                                        ? enabledtxt
                                        : deaible,
                                  ),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: selected == Gender.Email
                                        ? enabledtxt
                                        : deaible,
                                  ),
                                ),
                                style: TextStyle(
                                    color: selected == Gender.Email
                                        ? enabledtxt
                                        : deaible,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: he * 0.02,
                          ),
                          FadeAnimation(
                            delay: 1,
                            child: Container(
                              // width: we * 0.9,
                              // height: he * 0.071,
                              margin: const EdgeInsets.symmetric(horizontal: 70.0),

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: selected == Gender.password
                                      ? enabled
                                      : backgroundColor),
                              padding: const EdgeInsets.all(8.0),
                              width: 400.0,

                              child: TextField(
                                onChanged: (val){
                                },
                                onTap: () {
                                  setState(() {
                                    selected = Gender.password;

                                    //Validation.password(ispasswordev)==true? null : null;
                                  });
                                },
                                decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.lock_open_outlined,
                                      color: selected == Gender.password
                                          ? enabledtxt
                                          : deaible,
                                    ),
                                    suffixIcon: IconButton(
                                      icon: ispasswordev
                                          ? Icon(
                                              Icons.visibility_off,
                                              color: selected == Gender.password
                                                  ? enabledtxt
                                                  : deaible,
                                            )
                                          : Icon(
                                              Icons.visibility,
                                              color: selected == Gender.password
                                                  ? enabledtxt
                                                  : deaible,
                                            ),
                                      onPressed: () => setState(
                                          () => ispasswordev = !ispasswordev),
                                    ),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                        color: selected == Gender.password
                                            ? enabledtxt
                                            : deaible)),
                                obscureText: ispasswordev,
                                style: TextStyle(
                                    color: selected == Gender.password
                                        ? enabledtxt
                                        : deaible,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: he * 0.02,
                          ),
                          FadeAnimation(
                            delay: 1,
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.heebo(
                                    color: Colors.white,
                                    letterSpacing: 0.5,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                    // backgroundColor: const Color(0xFF0DF5E4),
                                    backgroundColor: kcolor,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0, horizontal: 80),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)))),
                          ),
                          SizedBox(
                            height: he * 0.01,
                          ),
                          FadeAnimation(
                            delay: 1,
                            child: TextButton(
                              child: Text("Forgot password?",
                              style: GoogleFonts.heebo(
                                color: kcolor.withOpacity(0.9),

                                // color: const Color(0xFF0DF5E4).withOpacity(0.9),
                                letterSpacing: 0.5,
                              )),
                              onPressed: () {},
                            ),
                          ),
                          // SizedBox(height: he * 0.12),
                          // FadeAnimation(
                          //   delay: 1,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       Text("Don't have an account?",
                          //           style: GoogleFonts.heebo(
                          //             color: Colors.lightBlueAccent,
                          //             letterSpacing: 0.5,
                          //           )),
                          //       GestureDetector(
                          //         onTap: () {
                          //           Navigator.of(context)
                          //               .push(MaterialPageRoute(builder: (context) {
                          //             return const Singup();
                          //           }));
                          //         },
                          //         child: Text("Sing up",
                          //             style: GoogleFonts.heebo(
                          //               //color: const Color(0xFF0DF5E4).withOpacity(0.9),
                          //               color: Colors.lightBlueAccent.withOpacity(0.9),
                          //
                          //               fontWeight: FontWeight.bold,
                          //               letterSpacing: 0.5,
                          //             )),
                          //       ),
                          //     ],
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
