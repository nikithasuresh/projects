import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:simpleweb/Common/constants.dart';
import 'package:simpleweb/Screens/dashboard/ConfigPage.dart';
import 'package:simpleweb/Screens/dashboard/ReportPage.dart';
import 'package:simpleweb/Screens/dashboard/productspage.dart';
import 'package:simpleweb/Screens/dashboard/sensorDisplay%20page.dart';
import 'package:simpleweb/Screens/dashboard/sidemenu.dart';
import 'package:simpleweb/Widgets/3D%20Button.dart';
import 'package:simpleweb/Widgets/3DContainer.dart';
import 'package:simpleweb/Widgets/Appbar.dart';

import 'package:simpleweb/Widgets/drawer.dart';

import 'SettingPage.dart';

class MyHomePage extends StatefulWidget {
  int currentIndex =0;
bool isAdminLogin;
MyHomePage({this.isAdminLogin=false});
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
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          bool isLaptop=constraints.maxWidth>500;
          return Scaffold(
            key: drawerkey,
            backgroundColor: common3dColor,
            drawer: !isLaptop?Drawer(
              child:    SideMenu(
                isadminLogin: widget.isAdminLogin,
                currentIndexSelected: widget.currentIndex,
                index0: () {
                  print("index 0");
                  drawerkey.currentState?.openEndDrawer();
                  setState(() {
                    widget.currentIndex = 0;
                  });
                },
                index1: () {
                  drawerkey.currentState?.openEndDrawer();
                  setState(() {
                    widget.currentIndex = 1;
                  });
                },
                index2: () {
                  drawerkey.currentState?.openEndDrawer();
                  setState(() {
                    widget.currentIndex = 2;
                  });
                },
                index3: () {
                  drawerkey.currentState?.openEndDrawer();
                  setState(() {
                    widget.currentIndex = 3;
                  });
                },
                index4: () {
                  drawerkey.currentState?.openEndDrawer();
                  setState(() {
                    widget.currentIndex = 4;
                  });
                },
              ),
            ):null,
            body: Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Column(
                children: [

                  ///appbar
                  MyAppbar(isLaptop: isLaptop,),
                  Expanded(
                    child: Row(
                      children: [

                        ///Left side menu
                        if(isLaptop)  SideMenu(
                          isadminLogin: widget.isAdminLogin,
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
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.85,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width,
                                child: (widget.currentIndex == 0
                                    ? SensorDisplayScreen()
                                    : widget.currentIndex == 1
                                    ? ProductsDIsplayPage(isLaptop: isLaptop,)
                                    : widget.currentIndex == 2
                                    ? ConfigDisplayPage()
                                    : widget.currentIndex == 3
                                    ? ReportDisplayPage(isLaptop:isLaptop)
                                    : widget.currentIndex == 4
                                    ? SettingsPage(isLaptop: isLaptop,)
                                    : Text("nothing")
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          );
        }
      ),
    );
  }
}
