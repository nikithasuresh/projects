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
import 'package:simpleweb/Widgets/3DContainer.dart';

import 'package:simpleweb/drawer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SensorDisplayScreen extends StatefulWidget {
  const SensorDisplayScreen({Key? key}) : super(key: key);

  @override
  _SensorDisplayScreenState createState() => _SensorDisplayScreenState();
}

class _SensorDisplayScreenState extends State<SensorDisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 2,right: 8,left: 8),
          child: Text(
            "Good Morning Nikitha",
            style:
                GoogleFonts.openSans(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2,bottom: 8,right: 8,left: 8),
          child: Text(
            "Your Daily Sensor Statistics",
            style:
                GoogleFonts.raleway(fontSize: 16, fontWeight: FontWeight.w600,color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Temperature",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 140,
                          child: Thermometer(
                            mercuryColor: Colors.lightBlueAccent,
                              outlineColor: Colors.grey,
                              label: ThermometerLabel("25°C",textStyle: GoogleFonts.rajdhani(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent)),
                              outlineThickness: 2,
                              barWidth: 20.0,
                              value: 15,
                              setpoint: Setpoint(15,side: SetpointSide.right,color: Colors.lightBlueAccent),
                              minValue: 5,
                              maxValue: 30
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Humidity",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Expanded(
                        child: Container(
                          height: 190,
                          width: 190,
                          child: LiquidCircularProgressIndicator(
                            value: 0.5, // Defaults to 0.5.
                            valueColor: AlwaysStoppedAnimation(Colors
                                .lightBlueAccent), // Defaults to the current Theme's accentColor.
                            backgroundColor: Colors
                                .white, // Defaults to the current Theme's backgroundColor.
                            borderColor: Colors.grey[100],
                            borderWidth: 1.0,

                            direction: Axis
                                .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                            center: Text(
                              "50%",
                              style: GoogleFonts.rajdhani(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Energy reading",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Expanded(
                        child: SleekCircularSlider(
                          appearance: CircularSliderAppearance(

                              customColors: CustomSliderColors(trackColor: Colors.grey,progressBarColors: [Colors.cyanAccent,Colors.lightBlueAccent]),
                              customWidths:
                                  CustomSliderWidths(progressBarWidth: 10)),
                          min: 10,
                          max: 100,
                          initialValue: 70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Room Temperature",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 140,
                          child: Thermometer(
                            mercuryColor: Colors.redAccent,
                              outlineColor: Colors.grey,
                              label: ThermometerLabel("45°C",textStyle: GoogleFonts.rajdhani(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.redAccent)),
                              outlineThickness: 2,
                              setpoint: Setpoint(25,side: SetpointSide.right),
                              barWidth: 20.0,
                              value: 25,
                              minValue: 5,
                              maxValue: 30
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Humidity",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Expanded(
                        child: Container(
                          height: 190,
                          width: 190,
                          child: LiquidCircularProgressIndicator(
                            value: 0.5, // Defaults to 0.5.
                            valueColor: AlwaysStoppedAnimation(Colors
                                .lightBlueAccent), // Defaults to the current Theme's accentColor.
                            backgroundColor: Colors
                                .white, // Defaults to the current Theme's backgroundColor.
                            borderColor: Colors.grey[100],
                            borderWidth: 1.0,

                            direction: Axis
                                .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                            center: Text(
                              "50%",
                              style: GoogleFonts.rajdhani(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Energy reading",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Expanded(
                        child: SleekCircularSlider(
                          appearance: CircularSliderAppearance(

                              customColors: CustomSliderColors(trackColor: Colors.grey,progressBarColors: [Colors.cyanAccent,Colors.lightBlueAccent]),
                              customWidths:
                                  CustomSliderWidths(progressBarWidth: 10)),
                          min: 10,
                          max: 100,
                          initialValue: 70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Periodic Analysis",style: GoogleFonts.rajdhani(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
        ),
        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Temperature",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Sparkline(
                          lineColor: Colors.lightBlueAccent,
                          pointColor: Colors.lightBlueAccent,
                          enableGridLines: true,
                          pointsMode: PointsMode.all,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.2,
                          data: [30, 35, 40, 37, 41, 39, 40, 36, 32],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Humidity",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Sparkline(
                          lineColor: Colors.lightBlueAccent,
                          pointColor: Colors.lightBlueAccent,
                          enableGridLines: true,
                          pointsMode: PointsMode.all,
                          // useCubicSmoothing: true,
                          // cubicSmoothingFactor: 0.2,
                          data: [50, 35, 40, 37, 41, 39, 40, 36, 32],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: My3DContainer(
                  color: common3dColor,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Energy Meter",
                        style: GoogleFonts.rajdhani(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Sparkline(
                          lineColor: Colors.lightBlueAccent,
                          pointColor: Colors.lightBlueAccent,
                          enableGridLines: true,
                          pointsMode: PointsMode.all,
                          useCubicSmoothing: true,
                          cubicSmoothingFactor: 0.2,
                          data: [50, 49, 48, 50,50, 49, 48, 50,50, 49, 48, 50,],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
