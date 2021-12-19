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

class ConfigDisplayPage extends StatefulWidget {
  const ConfigDisplayPage({Key? key}) : super(key: key);

  @override
  _ConfigDisplayPageState createState() => _ConfigDisplayPageState();
}

class _ConfigDisplayPageState extends State<ConfigDisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 2, right: 8, left: 8),
          child: Text(
            "Configure",
            style:
            GoogleFonts.openSans(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 8, right: 8, left: 8),
          child: Text(
            "You can configure Iot devices here",
            style: GoogleFonts.raleway(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
        ),
        Divider(),
        // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: My3DContainer(
            height: 100,
            width: 180,
            color: common3dColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Lights",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                ToggleSwitch(
                  icons: [Icons.lightbulb_outline,Icons.lightbulb],
                  initialLabelIndex: 0,
                  activeFgColor: Colors.white,
                  activeBgColor: [Colors.amber],
                  totalSwitches: 2,
                  labels: ['On', 'OFF'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
