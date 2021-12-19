import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpleweb/Common/constants.dart';
import 'package:simpleweb/Widgets/3D%20Button.dart';
import 'package:simpleweb/Widgets/3DContainer.dart';

class SideMenu extends StatefulWidget {
  int currentIndexSelected;
  VoidCallback index0, index1, index2, index3, index4;
  bool isadminLogin;
  SideMenu(
      {this.isadminLogin = false,
      this.currentIndexSelected = 0,
      required this.index0,
      required this.index1,
      required this.index2,
      required this.index3,
      required this.index4});
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: My3DContainer(
          color: common3dColor,
          width: 300,
          height: 800,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Menu",
                    style: GoogleFonts.robotoSlab(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: My3DButton(
                        color: common3dColor,
                        child: Container(
                          width: 270,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.home_outlined, size: 28),
                              Text(
                                "HOME",
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Container(
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: widget.currentIndexSelected == 0
                                        ? Colors.lightBlueAccent
                                        : common3dColor),
                              )
                            ],
                          ),
                        ),
                        onpressed: widget.index0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: My3DButton(
                        color: common3dColor,
                        child: Container(
                          width: 270,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.list_alt, size: 28),
                              Text(
                                "PRODUCTS",
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Container(
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: widget.currentIndexSelected == 1
                                        ? Colors.lightBlueAccent
                                        : common3dColor),
                              )
                            ],
                          ),
                        ),
                        onpressed: widget.index1),
                  ),
                  if(widget.isadminLogin)Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: My3DButton(
                        color: common3dColor,
                        child: Container(
                          width: 270,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.switch_right_rounded, size: 28),
                              Text(
                                "CONFIGURE",
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Container(
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: widget.currentIndexSelected == 2
                                        ? Colors.lightBlueAccent
                                        : common3dColor),
                              )
                            ],
                          ),
                        ),
                        onpressed: widget.index2),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: My3DButton(
                        color: common3dColor,
                        child: Container(
                          width: 270,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(EvaIcons.barChart2, size: 28),
                              Text(
                                "REPORT",
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Container(
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: widget.currentIndexSelected == 3
                                        ? Colors.lightBlueAccent
                                        : common3dColor),
                              )
                            ],
                          ),
                        ),
                        onpressed: widget.index3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: My3DButton(
                        color: common3dColor,
                        child: Container(
                          width: 270,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.settings, size: 28),
                              Text(
                                "SETTINGS",
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 23, fontWeight: FontWeight.w600),
                              ),
                              Container(
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: widget.currentIndexSelected == 4
                                        ? Colors.lightBlueAccent
                                        : common3dColor),
                              )
                            ],
                          ),
                        ),
                        onpressed: widget.index4),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
