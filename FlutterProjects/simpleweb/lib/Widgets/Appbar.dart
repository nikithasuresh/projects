import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpleweb/Common/constants.dart';
import 'package:simpleweb/Widgets/3D%20Button.dart';
import 'package:simpleweb/Widgets/3DContainer.dart';

class MyAppbar extends StatefulWidget {
 bool isLaptop;
 MyAppbar({this.isLaptop=false});
  @override
  _MyAppbarState createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  Widget Buttons(){
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeumorphicButton(
            style: NeumorphicStyle(
              color: common3dColor,
              shadowDarkColor: isdarkmode() ? Colors.black : null,
              shadowLightColor: isdarkmode() ? Colors.grey[700] : null,
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.all(Radius.circular(10))),
            ),
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Text(
                  "ABOUT-US",
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
              shadowDarkColor: isdarkmode() ? Colors.black : null,
              shadowLightColor: isdarkmode() ? Colors.grey[700] : null,
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeumorphicButton(
            style: NeumorphicStyle(
              color: common3dColor,
              shadowDarkColor: isdarkmode() ? Colors.black : null,
              shadowLightColor: isdarkmode() ? Colors.grey[700] : null,
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.all(Radius.circular(10))),
            ),
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Text(
                "LogOut",
                style: GoogleFonts.rajdhani(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: My3DContainer(
        height: widget.isLaptop? 60:120,
        width: MediaQuery.of(context).size.width * 0.9,
        color: common3dColor,
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if(!widget.isLaptop)Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: My3DButton(
                      color: common3dColor,
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(Icons.menu),
                      ),
                      onpressed: (){
                        drawerkey.currentState?.openDrawer();
                      }
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("images/logo.png"),
                          Text("Herin ELectronics",
                              style: GoogleFonts.lobsterTwo(
                                  fontSize: widget.isLaptop? 24:22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.lightBlueAccent,
                                  letterSpacing: 3)),
                        ],
                      ),
                    ),
                  ),
                  //Buttons
                  if(widget.isLaptop)Buttons()
                ],
              ),
            ),
            if(!widget.isLaptop)Container(height:60,child: Buttons())
          ],
        ),
      ),
    );
  }
}
