


import 'package:flutter/material.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:simpleweb/Common/constants.dart';


class My3DContainer extends StatefulWidget {
  double? intensity;
  Offset? offset;
  double? blur;
  Color? color;
  BorderRadius? borderRadius;
  NeuomorphicStyle? style;
  double? height,width;
  My3DContainer({this.offset,this.intensity,this.blur,this.child,this.borderRadius,this.width,this.height,this.color,this.style});
  Widget? child;
  @override
  _My3DContainerState createState() => _My3DContainerState();
}

class _My3DContainerState extends State<My3DContainer> {
  @override
  Widget build(BuildContext context) {
    return NeuomorphicContainer(
      intensity: widget.intensity??intensity,
      offset: widget.offset??offset,
      blur: widget.blur??blur,
      color: widget.color?? (common3dColor),
      borderRadius: widget.borderRadius??BorderRadius.circular(12),
      style: widget.style??(isdarkmode() ? NeuomorphicStyle.Flat : NeuomorphicStyle.Flat),
      height: widget.height??null,
      width: widget.width?? null,
      child: widget.child,
    );
  }
}
