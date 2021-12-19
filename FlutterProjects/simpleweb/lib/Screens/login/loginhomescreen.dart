import 'package:awesome_button/awesome_button.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:nice_buttons/nice_buttons.dart';
import 'package:simpleweb/Common/constants.dart';
import 'package:simpleweb/Screens/dashboard/dashboardHomePage.dart';
import 'package:simpleweb/Screens/login/adminPage.dart';
import 'package:simpleweb/Widgets/3D%20Button.dart';
import 'package:simpleweb/Widgets/3DContainer.dart';
import 'package:simpleweb/Widgets/fade%20Up%20animations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ///Initializations
  bool emailValid = false;
  bool passValid = false;
  // String? email;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: common3dColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 500) {
            ///Laptop screen
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: My3DContainer(
                      height: 600,
                      width: 1200,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                ///Left side
                                Expanded(
                                  child: MyFadeRight(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 50,
                                          child: Row(
                                            children: [
                                              Image.asset("images/logo.png"),
                                              Text("Herin Electronics",
                                                  style: GoogleFonts.lobsterTwo(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors
                                                          .lightBlueAccent))
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Login to your Account",
                                                  style: GoogleFonts.prompt(
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors
                                                          .lightBlueAccent),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: My3DContainer(
                                                      height: 40,
                                                      width: 40,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Icon(
                                                        Icons.facebook_outlined,
                                                        color: Colors.blue,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: My3DContainer(
                                                      height: 40,
                                                      width: 40,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Icon(
                                                        EvaIcons.google,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: My3DContainer(
                                                      height: 40,
                                                      width: 40,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Icon(
                                                        EvaIcons.twitter,
                                                        color: Colors
                                                            .lightBlueAccent,
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "Or use your email account",
                                                style: GoogleFonts.rajdhani(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.grey),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: My3DContainer(
                                                  width: 500,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      controller:
                                                          emailController,
                                                      style: textstyle,
                                                      // keyboardType: TextInputType.emailAddress,
                                                      textAlign:
                                                          TextAlign.center,
                                                      onChanged: (value) {
                                                        if (value.isNotEmpty) {
                                                          emailValid = RegExp(
                                                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                              .hasMatch(value);
                                                          // print("email is $email");
                                                          setState(() {});
                                                        }
                                                      },
                                                      onEditingComplete: () {
                                                        // node.nextFocus();
                                                      },
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText:
                                                            'Enter your Email',
                                                        hintStyle: GoogleFonts.rajdhani(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: isdarkmode()
                                                                ? Colors
                                                                    .cyanAccent
                                                                : Colors
                                                                    .lightBlueAccent),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: My3DContainer(
                                                  width: 500,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextField(
                                                      controller:
                                                          passwordController,
                                                      style: textstyle,
                                                      // keyboardType: TextInputType.emailAddress,
                                                      textAlign:
                                                          TextAlign.center,
                                                      onChanged: (value) {
                                                        if (value.isNotEmpty) {
                                                          if (value
                                                              .isNotEmpty) {
                                                            String pattern =
                                                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                                                            RegExp regExp =
                                                                new RegExp(
                                                                    pattern);
                                                            passValid =
                                                                regExp.hasMatch(
                                                                    value);
                                                          }
                                                          setState(() {});
                                                        }
                                                      },
                                                      onEditingComplete: () {
                                                        // node.nextFocus();
                                                      },
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText:
                                                            'Enter your password',
                                                        hintStyle: GoogleFonts.rajdhani(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: isdarkmode()
                                                                ? Colors
                                                                    .cyanAccent
                                                                : Colors
                                                                    .lightBlueAccent),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: My3DButton(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: common3dColor,
                                                    child: Container(
                                                      height: 60,
                                                      width: 200,
                                                      child: Center(
                                                        child: Text(
                                                          "Login",
                                                          style: GoogleFonts
                                                              .openSans(
                                                            color: Colors
                                                                .lightBlueAccent,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 27.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    onpressed: () {
                                                      if (emailValid)
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        MyHomePage(
                                                                          isAdminLogin:
                                                                              false,
                                                                        )));
                                                      else {
                                                        final snackBar = SnackBar(
                                                            content: Text(
                                                                'Please Enter a valid email address'));

                                                        // Find the ScaffoldMessenger in the widget tree
                                                        // and use it to show a SnackBar.
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                                snackBar);
                                                      }
                                                    }),
                                              ),
                                              // AwesomeButton(
                                              //   blurRadius: 1.0,
                                              //   splashColor:
                                              //   Color.fromRGBO(255, 255, 255, .4),
                                              //   borderRadius: BorderRadius.circular(10.0),
                                              //   height: 60.0,
                                              //   width: 200.0,
                                              //   onTap: () {
                                              //
                                              //   },
                                              //   color: Colors.pink,
                                              //   child:
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                ///Right side
                                Expanded(
                                  child: MyFadeLeft(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://img.freepik.com/free-vector/abstract-pastel-blue-gradient-background_29865-2079.jpg?size=626&ext=jpg"),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            // NeumorphicText(
                                            //   "Hello Admin",
                                            //   style: NeumorphicStyle(
                                            //     depth: 6, //customize depth here
                                            //     color: Colors.grey[
                                            //         200], //customize color here
                                            //   ),
                                            //   textStyle: NeumorphicTextStyle(
                                            //       fontStyle:
                                            //           GoogleFonts.openSans()
                                            //               .fontStyle,
                                            //       fontFamily:
                                            //           GoogleFonts.openSans()
                                            //               .fontFamily,
                                            //       fontSize:
                                            //           50, //customize size here
                                            //       fontWeight: FontWeight.w600
                                            //       // AND others usual text style properties (fontFamily, fontWeight, ...)
                                            //       ),
                                            // ),
                                            Text(
                                              "Hello Admin !!!",
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 40,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              "Please login and analyse the User's data",
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                            // NeumorphicText(
                                            //   "Please login and analyse the User's data",
                                            //   style: NeumorphicStyle(
                                            //     depth: 4, //customize depth here
                                            //     color: Colors.grey[
                                            //         600], //customize color here
                                            //   ),
                                            //   textStyle: NeumorphicTextStyle(
                                            //       fontStyle:
                                            //           GoogleFonts.openSans()
                                            //               .fontStyle,
                                            //       fontFamily:
                                            //           GoogleFonts.openSans()
                                            //               .fontFamily,
                                            //       fontSize:
                                            //           20, //customize size here
                                            //       fontWeight: FontWeight.w600
                                            //       // AND others usual text style properties (fontFamily, fontWeight, ...)
                                            //       ),
                                            // ),

                                            SizedBox(
                                              height: 50,
                                            ),
                                            AwesomeButton(
                                              blurRadius: 10.0,
                                              splashColor: Color.fromRGBO(
                                                  255, 255, 255, .4),
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              height: 75.0,
                                              width: 200.0,
                                              onTap: () {
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            AdminLoginPage()));
                                              },
                                              color: Colors.lightBlueAccent,
                                              child: Text(
                                                "Admin Login",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            ///mobile screen
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: My3DContainer(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            ///Left side

                            MyFadeDown(
                              child: Container(
                                height: 490,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      child: Row(
                                        children: [
                                          Image.asset("images/logo.png"),
                                          Text("Herin Electronics",
                                              style: GoogleFonts.lobsterTwo(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.lightBlueAccent))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Login to your Account",
                                              style: GoogleFonts.prompt(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.lightBlueAccent),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: My3DContainer(
                                                  height: 40,
                                                  width: 40,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  child: Icon(
                                                    Icons.facebook_outlined,
                                                    color: Colors.blue,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: My3DContainer(
                                                  height: 40,
                                                  width: 40,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  child: Icon(
                                                    EvaIcons.google,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: My3DContainer(
                                                  height: 40,
                                                  width: 40,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  child: Icon(
                                                    EvaIcons.twitter,
                                                    color: Colors.lightBlueAccent,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Or use your email account",
                                            style: GoogleFonts.rajdhani(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: My3DContainer(
                                              width: 500,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  controller: emailController,
                                                  style: textstyle,
                                                  // keyboardType: TextInputType.emailAddress,
                                                  textAlign: TextAlign.center,
                                                  onChanged: (value) {
                                                    if (value.isNotEmpty) {
                                                      emailValid = RegExp(
                                                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                          .hasMatch(value);
                                                      // print("email is $email");
                                                      setState(() {});
                                                    }
                                                  },
                                                  onEditingComplete: () {
                                                    // node.nextFocus();
                                                  },
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText: 'Enter your Email',
                                                    hintStyle: GoogleFonts.rajdhani(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: isdarkmode()
                                                            ? Colors.cyanAccent
                                                            : Colors
                                                                .lightBlueAccent),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: My3DContainer(
                                              width: 500,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  controller: passwordController,
                                                  style: textstyle,
                                                  // keyboardType: TextInputType.emailAddress,
                                                  textAlign: TextAlign.center,
                                                  onChanged: (value) {
                                                    if (value.isNotEmpty) {
                                                      if (value.isNotEmpty) {
                                                        String pattern =
                                                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                                                        RegExp regExp =
                                                            new RegExp(pattern);
                                                        passValid = regExp
                                                            .hasMatch(value);
                                                      }
                                                      setState(() {});
                                                    }
                                                  },
                                                  onEditingComplete: () {
                                                    // node.nextFocus();
                                                  },
                                                  decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:
                                                        'Enter your password',
                                                    hintStyle: GoogleFonts.rajdhani(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: isdarkmode()
                                                            ? Colors.cyanAccent
                                                            : Colors
                                                                .lightBlueAccent),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: My3DButton(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color: common3dColor,
                                                child: Container(
                                                  height: 60,
                                                  width: 200,
                                                  child: Center(
                                                    child: Text(
                                                      "Login",
                                                      style: GoogleFonts.openSans(
                                                        color: Colors
                                                            .lightBlueAccent,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 27.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                onpressed: () {
                                                  if (emailValid)
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                MyHomePage(
                                                                  isAdminLogin:
                                                                      false,
                                                                )));
                                                  else {
                                                    final snackBar = SnackBar(
                                                        content: Text(
                                                            'Please Enter a valid email address'));

                                                    // Find the ScaffoldMessenger in the widget tree
                                                    // and use it to show a SnackBar.
                                                    ScaffoldMessenger.of(context)
                                                        .showSnackBar(snackBar);
                                                  }
                                                }),
                                          ),
                                          // AwesomeButton(
                                          //   blurRadius: 1.0,
                                          //   splashColor:
                                          //   Color.fromRGBO(255, 255, 255, .4),
                                          //   borderRadius: BorderRadius.circular(10.0),
                                          //   height: 60.0,
                                          //   width: 200.0,
                                          //   onTap: () {
                                          //
                                          //   },
                                          //   color: Colors.pink,
                                          //   child:
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            ///Right side

                            MyFadeUp(
                              child: Container(
                                height: 440,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://img.freepik.com/free-vector/abstract-pastel-blue-gradient-background_29865-2079.jpg?size=626&ext=jpg"),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Hello Admin !!!",
                                          style: GoogleFonts.openSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40,
                                              color: Colors.white),
                                        ),

                                        // Text(
                                        //   "Hello Admin !!!",
                                        //   style: GoogleFonts.openSans(
                                        //       fontWeight: FontWeight.bold,
                                        //       fontSize: 40,
                                        //       color: Colors.deepPurpleAccent),
                                        // ),
                                        Text(
                                          "Please login and analyse the User's data",
                                          style: GoogleFonts.openSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                        // NeumorphicText(
                                        //
                                        //   style: NeumorphicStyle(
                                        //     depth: 4, //customize depth here
                                        //     color: Colors
                                        //         .grey[600], //customize color here
                                        //   ),
                                        //   textStyle: NeumorphicTextStyle(
                                        //       fontStyle: GoogleFonts.openSans()
                                        //           .fontStyle,
                                        //       fontFamily: GoogleFonts.openSans()
                                        //           .fontFamily,
                                        //       fontSize: 20, //customize size here
                                        //       fontWeight: FontWeight.w600
                                        //       // AND others usual text style properties (fontFamily, fontWeight, ...)
                                        //       ),
                                        // ),

                                        SizedBox(
                                          height: 50,
                                        ),
                                        AwesomeButton(
                                          blurRadius: 10.0,
                                          splashColor:
                                              Color.fromRGBO(255, 255, 255, .4),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          height: 75.0,
                                          width: 200.0,
                                          onTap: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AdminLoginPage()));
                                          },
                                          color: Colors.lightBlueAccent,
                                          child: Text(
                                            "Admin Login",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
