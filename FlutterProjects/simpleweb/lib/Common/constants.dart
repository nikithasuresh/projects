

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

double intensity=isdarkmode()?0.6:0.4;
Offset offset=isdarkmode()?Offset(3,3):Offset(3, 3);
double blur=isdarkmode()?3:3;
Color darkmodecolor=Colors.cyanAccent;
Color lightmodecolor=Colors.lightBlueAccent;
TextStyle textstyle=GoogleFonts.rajdhani(color: isdarkmode()?Colors.cyanAccent:Colors.lightBlueAccent,fontSize: 18,fontWeight: FontWeight.w600);

bool isdarkmode() {
  return false;
  // return SchedulerBinding.instance?.window.platformBrightness == Brightness.dark;
}


Color? common3dColor=Colors.grey[100];
GlobalKey<ScaffoldState> drawerkey = GlobalKey<ScaffoldState>();
// _drawerkey.currentState.openDrawer();