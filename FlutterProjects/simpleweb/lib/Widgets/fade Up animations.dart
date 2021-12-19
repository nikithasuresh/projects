




import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';

Widget MyFadeUp({required Widget child,Duration duration= const Duration(milliseconds: 300)}){
  return FadeInUp(
    from: 300,
    duration:duration,
    child: child,
  );
}


Widget MyFadeDown({required Widget child,duration= const Duration(milliseconds: 300)}){
  return FadeInDown(
    from: 300,
    duration:duration,
    child: child,
  );
}


Widget MyFadeLeft({required Widget child,duration= const Duration(milliseconds: 600)}){
  return FadeInLeft(
    from: 500,
    duration: duration,
    child: child,
  );
}


Widget MyFadeRight({required Widget child,duration= const Duration(milliseconds: 600)}){
  return FadeInRight(
    from: 500,
    duration: duration,
    child: child,
  );
}

