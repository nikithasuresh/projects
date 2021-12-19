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

class ProductsDIsplayPage extends StatefulWidget {
 bool isLaptop=false;
 ProductsDIsplayPage({this.isLaptop=false});
  @override
  _ProductsDIsplayPageState createState() => _ProductsDIsplayPageState();
}

class _ProductsDIsplayPageState extends State<ProductsDIsplayPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Expanded(
          child: ListView(
            children: <Widget>[
              Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 2, right: 8, left: 8),
              child: Text(
                "Products we offer",
                style:
                GoogleFonts.openSans(fontSize:widget.isLaptop? 30:22, fontWeight: FontWeight.bold),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 8, right: 8, left: 8),
                child: Text(
                  "You can Buy any things from here",
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Arduino Boards ",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_right_alt)
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductContainer(
                      imageurl:
                          "https://images.unsplash.com/photo-1553406830-ef2513450d76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YXJkdWlub3xlbnwwfHwwfHw%3D&w=1000&q=80",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://images.unsplash.com/photo-1555543451-eeaff357e0f3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://images.unsplash.com/photo-1627660163665-0e35b5f9b4d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://images.unsplash.com/photo-1593059126588-42d0198f6e0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1175&q=80",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Arduino Sensors ",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_right_alt)
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductContainer(
                      imageurl:
                          "https://5.imimg.com/data5/QH/MC/MY-46809968/water-flow-sensor-500x500.jpg",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://5.imimg.com/data5/RM/PW/MY-2755789/kitsguru-dht11-module-temperature-and-humidity-sensor-module-500x500.png",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://5.imimg.com/data5/IC/DV/MY-3386804/lm35dz-temperature-sensor-with-analog-output-500x500.jpg",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://5.imimg.com/data5/VL/UA/UG/SELLER-88021841/1-500x500.jpg",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Raspberry Pi Boards ",style: GoogleFonts.openSans(fontSize: 20,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_right_alt)
                  ],
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductContainer(
                      imageurl:
                          "https://cdn.shopify.com/s/files/1/0176/3274/files/Raspberry-Pi-4-Featured_550x.png?v=1635357483",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://5.imimg.com/data5/SELLER/Default/2021/9/BY/PT/CL/1833510/raspberry-pi-poe-hat-for-3b-and-pi-4-500x500.jpg",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://images.unsplash.com/photo-1627660163665-0e35b5f9b4d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    ProductContainer(
                      imageurl:
                          "https://cdn.shopify.com/s/files/1/0053/4721/3361/products/RP-RASPBERRY-PI-4-CASE_1000x1000.jpg?v=1569555027",
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
