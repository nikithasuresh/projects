


import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:simpleweb/Common/constants.dart';


Widget My3DButton({Color? color,
  BorderRadius? borderRadius,
  NeumorphicShape? neushape,
  final void Function()? onpressed,
  Widget? child,
  NeumorphicBoxShape? neuoboxshape}){
  return NeumorphicButton(
    style: NeumorphicStyle(
      color: color??(isdarkmode() ? Colors.brown : Colors.white),
      shape:neushape?? NeumorphicShape.flat,
      shadowDarkColor: isdarkmode() ? Colors.black : null,
      shadowLightColor: isdarkmode() ? Colors.grey[700] : null,
      boxShape:neuoboxshape?? NeumorphicBoxShape.roundRect(
          BorderRadius.all(Radius.circular(10))),
    ),
    padding: const EdgeInsets.all(5),
    child:child,
    onPressed: onpressed,
  );
}
