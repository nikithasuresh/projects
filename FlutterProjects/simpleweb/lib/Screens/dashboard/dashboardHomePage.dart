import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:simpleweb/Common/constants.dart';
import 'package:simpleweb/Screens/dashboard/sensorDisplay%20page.dart';
import 'package:simpleweb/Screens/dashboard/sidemenu.dart';
import 'package:simpleweb/Widgets/3D%20Button.dart';
import 'package:simpleweb/Widgets/3DContainer.dart';
import 'package:simpleweb/Widgets/Appbar.dart';

import 'package:simpleweb/drawer.dart';

class MyHomePage extends StatefulWidget {
  int currentIndex = 0;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode()..requestFocus(),
      onKey: (event) {
        print('hi');
        if (event.logicalKey == LogicalKeyboardKey.controlLeft) {
          setState(() {});
        }
      },
      child: Scaffold(
        backgroundColor: common3dColor,
        // drawer: NavigationDrawer(),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 400.0) {
            ///For Laptop screen size
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ///appbar
                  MyAppbar(),
                  Expanded(
                    child: Row(
                      children: [
                        ///Left side menu
                        SideMenu(
                          currentIndexSelected: widget.currentIndex,
                          index0: () {
                            print("index 0");
                            setState(() {
                              widget.currentIndex = 0;
                            });
                          },
                          index1: () {
                            setState(() {
                              widget.currentIndex = 1;
                            });
                          },
                          index2: () {
                            setState(() {
                              widget.currentIndex = 2;
                            });
                          },
                          index3: () {
                            setState(() {
                              widget.currentIndex = 3;
                            });
                          },
                          index4: () {
                            setState(() {
                              widget.currentIndex = 4;
                            });
                          },
                        ),

                        ///Right side dashboard
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: My3DContainer(
                            color: Colors.grey[100],
                            height: MediaQuery.of(context).size.height * 0.85,
                            width: MediaQuery.of(context).size.width,
                            child: (widget.currentIndex == 0
                                ? SensorDisplayScreen()
                                :widget.currentIndex==1? Text("prod")
                                :widget.currentIndex==2? Text("configure")
                                :widget.currentIndex==3? Text("report")
                                :widget.currentIndex==4? Text("Settings"):Text("nothing")
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            ///For mobile screen
            return new Text(
              'SMALL',
              style: GoogleFonts.rajdhani(
                  fontSize: 40, fontWeight: FontWeight.bold),
            );
          }
        }),
      ),
    );
  }
}
