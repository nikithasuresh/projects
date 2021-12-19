import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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

class ReportDisplayPage extends StatefulWidget {
  int currentReportIndex=0;
  bool isLaptop;
  ReportDisplayPage({this.isLaptop=false});
  @override
  _ReportDisplayPageState createState() => _ReportDisplayPageState();
}

class _ReportDisplayPageState extends State<ReportDisplayPage> {
  @override
  Widget build(BuildContext context) {
    double autoWidth= widget.isLaptop?400:(MediaQuery.of(context).size.width*0.8);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: My3DContainer(
            height: 100,
            width: 350,
            color: common3dColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Reports",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                ToggleSwitch(
                  minWidth: 100,
                  icons: [EvaIcons.barChart,EvaIcons.barChart2,Icons.bar_chart_rounded],
                  initialLabelIndex: widget.currentReportIndex,
                  activeFgColor: Colors.white,
                  activeBgColor: [Colors.amber],
                  totalSwitches: 3,
                  labels: ['Daily', 'Weekly','Monthly'],
                  onToggle: (index) {
                    print('switched to: $index');
                    setState(() {
                      widget.currentReportIndex=index;
                    });
                  },
                ),

              ],
            ),
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text((widget.currentReportIndex==0?"Daily ":widget.currentReportIndex==1?"Weekly ":"Monthly ")+"Report",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: My3DContainer(
                    color: common3dColor,
                    width: autoWidth,
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
                            color: Colors.grey,
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
                            data:widget.currentReportIndex==0?[30, 35, 40, 37]: widget.currentReportIndex==1?[30, 35, 40, 37, 41, 39, 40, 36, 32]:[30, 35, 40, 37, 41, 39, 40, 36, 32,30, 35, 40, 37, 41, 39, 40, 36, 32],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: My3DContainer(
                    color: common3dColor,
                    width: autoWidth,
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
                            color: Colors.grey,
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
                            data:widget.currentReportIndex==0?[50, 35, 40, 37, 41]: widget.currentReportIndex==1?[50, 35, 40, 37, 41, 39, 40, 36, 32,50, 35, 40, 37, 41, 39, 40, 36, 32]:[50, 35, 40, 37, 41, 39, 40, 36, 32,50, 35, 40, 37, 41, 39, 40, 36, 32,50, 35, 40, 37, 41, 39, 40, 36, 32],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: My3DContainer(
                    color: common3dColor,
                    width: autoWidth,
                    child: Column(
                      children: [
                        Text(
                          "Energy meter",
                          style: GoogleFonts.rajdhani(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Divider(
                            color: Colors.grey,
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
                            data:widget.currentReportIndex==0?[50, 49, 48, 50,50]: widget.currentReportIndex==1?[50, 49, 48, 50,50, 49, 48, 50,50, 49, 48, 50,]:[50, 49, 48, 50,50, 49, 48, 50,50, 49, 48, 50,50, 49, 48, 50,50, 49, 48, 50,50, 49, 48, 50,],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
