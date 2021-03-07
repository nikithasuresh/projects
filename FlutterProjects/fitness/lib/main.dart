import 'package:flutter/material.dart';
import 'inputs.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E51), //Color(0xFFF76538) here 0xFF with the hex value RGB
        scaffoldBackgroundColor: Color(0xFF0A0E31),


      ),
      home: InputPage(),
    );
  }
}
