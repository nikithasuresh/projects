

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpleweb/Common/constants.dart';
import 'package:simpleweb/Widgets/3DContainer.dart';

class MyAppbar extends StatefulWidget {
  const MyAppbar({Key? key}) : super(key: key);

  @override
  _MyAppbarState createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: My3DContainer(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.9,
        color: common3dColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset("images/logo.png"),
                  Text("Herin ELectronics",
                      style: GoogleFonts.lobsterTwo(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.lightBlueAccent,
                          letterSpacing: 3)),
                ],
              ),
            ),
            //Buttons
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NeumorphicButton(
                    style: NeumorphicStyle(
                      color: common3dColor,
                      shadowDarkColor:
                      isdarkmode() ? Colors.black : null,
                      shadowLightColor:
                      isdarkmode() ? Colors.grey[700] : null,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(10))),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                        child: Text(
                          "Mail Us",
                          style: GoogleFonts.rajdhani(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[700]),
                        )),
                    onPressed: () {
                      // _drawerkey.currentState.openDrawer();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NeumorphicButton(
                    style: NeumorphicStyle(
                      color: common3dColor,
                      shadowDarkColor:
                      isdarkmode() ? Colors.black : null,
                      shadowLightColor:
                      isdarkmode() ? Colors.grey[700] : null,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(10))),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                        child: Text(
                          "Lol",
                          style: GoogleFonts.rajdhani(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[700]),
                        )),
                    onPressed: () {
                      // _drawerkey.currentState.openDrawer();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: NeumorphicButton(
                    style: NeumorphicStyle(
                      color: common3dColor,
                      shadowDarkColor:
                      isdarkmode() ? Colors.black : null,
                      shadowLightColor:
                      isdarkmode() ? Colors.grey[700] : null,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(10))),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                        child: Text(
                          "ContactUs",
                          style: GoogleFonts.rajdhani(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[700]),
                        )),
                    onPressed: () {
                      // _drawerkey.currentState.openDrawer();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
