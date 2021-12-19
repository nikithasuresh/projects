

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_thermometer/label.dart';
import 'package:flutter_thermometer/scale.dart';
import 'package:flutter_thermometer/setpoint.dart';
import 'package:flutter_thermometer/thermometer_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:simpleweb/Common/constants.dart';
import 'package:simpleweb/Widgets/3D%20Button.dart';
import 'package:simpleweb/Widgets/3DContainer.dart';

import 'package:simpleweb/Widgets/drawer.dart';
import 'package:simpleweb/Widgets/productContainer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SettingsPage extends StatefulWidget {

bool isLaptop;
SettingsPage({this.isLaptop=false});
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ///Initializations
  TextEditingController socialMediaController=TextEditingController();
  TextEditingController firstnameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController contactController=TextEditingController();
  TextEditingController oldpasswordController=TextEditingController();
  TextEditingController newpasswordController=TextEditingController();
  TextEditingController reenterNewpasswordController=TextEditingController();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    socialMediaController.text="http://www.facbook.com/asdasd";
    firstnameController.text="Nikitha";
    lastNameController.text="Suresh";
    contactController.text="+918787878787";
  }
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 2, right: 8, left: 8),
          child: Text(
            "User login details",
            style:
            GoogleFonts.openSans(fontSize: widget.isLaptop? 30:22, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 8, right: 8, left: 8),
          child: Text(
            "You can edit your login informations here",
            style: GoogleFonts.raleway(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
        ),
        Divider(),
        // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
        if(widget.isLaptop) Row(
          mainAxisAlignment: widget.isLaptop?MainAxisAlignment.start:MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: My3DContainer(
                width: widget.isLaptop?300:MediaQuery.of(context).size.width*0.92,
                child: Padding(
                  padding:
                  const EdgeInsets.all(8.0),
                  child: TextField(
                    controller:firstnameController,
                    style: textstyle,
                    // keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {

                    },
                    onEditingComplete: () {
                      // node.nextFocus();
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name',
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

            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: My3DContainer(
                  width: 300,
                  child: Padding(
                    padding:
                    const EdgeInsets.all(8.0),
                    child: TextField(
                      controller:lastNameController,
                      style: textstyle,
                      // keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {

                      },
                      onEditingComplete: () {
                        // node.nextFocus();
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Last Name',
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
            ),
          ],
        ),


        if(!widget.isLaptop)Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [ Padding(
              padding: const EdgeInsets.all(8.0),
              child: My3DContainer(
                width: widget.isLaptop?300:MediaQuery.of(context).size.width*0.92,
                child: Padding(
                  padding:
                  const EdgeInsets.all(8.0),
                  child: TextField(
                    controller:firstnameController,
                    style: textstyle,
                    // keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    onChanged: (value) {

                    },
                    onEditingComplete: () {
                      // node.nextFocus();
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'First Name',
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
                  width: widget.isLaptop?300:MediaQuery.of(context).size.width*0.92,
                  child: Padding(
                    padding:
                    const EdgeInsets.all(8.0),
                    child: TextField(
                      controller:lastNameController,
                      style: textstyle,
                      // keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {

                      },
                      onEditingComplete: () {
                        // node.nextFocus();
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Last Name',
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
            ],
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
                obscureText: true,
                controller:oldpasswordController,
                style: textstyle,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                },
                onEditingComplete: () {
                  // node.nextFocus();
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Current password',
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
                obscureText: false,
                controller: newpasswordController,
                style: textstyle,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                },
                onEditingComplete: () {
                  // node.nextFocus();
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'New password',
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
                controller:reenterNewpasswordController,
                style: textstyle,
                // keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {

                },
                onEditingComplete: () {
                  // node.nextFocus();
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Confirm new Password',
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
                controller:socialMediaController,
                style: textstyle,
                // keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {

                },
                onEditingComplete: () {
                  // node.nextFocus();
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Social media Link',
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
       widget.isLaptop? Padding(
          padding: const EdgeInsets.only(left: 200),
          child: My3DButton(
            color: common3dColor,
            onpressed: (){

            },
            child: Container(
              height: 50,
              width: 100,
              child: Center(child: Text("Submit",style: GoogleFonts.prompt(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),),
            )
          ),
        ):
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: My3DButton(
                  color: common3dColor,
                  onpressed: (){

                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    child: Center(child: Text("Submit",style: GoogleFonts.prompt(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),),
                  )
              ),
            ),
          ),
        )
      ],
    );
  }
}
