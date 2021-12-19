
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simpleweb/Common/constants.dart';
import 'package:simpleweb/Widgets/3D%20Button.dart';
import 'package:simpleweb/Widgets/3DContainer.dart';

class ProductContainer extends StatefulWidget {
 String imageurl;
 ProductContainer({required this.imageurl});
  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: My3DContainer(
        color: common3dColor,
        width: 300,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  widget.imageurl),
                              fit: BoxFit.cover)),

                    ),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: My3DButton(
                  color: common3dColor,
                  child: Container(
                      width: 200,
                      height: 40,
                      child: Center(
                          child: Text(
                            "Buy",
                            style: GoogleFonts.rajdhani(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent),
                          ))),
                  onpressed: () {
                    setState(() {});
                  }),
            )
          ],
        ),
      ),
    );
  }
}
