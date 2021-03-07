import 'package:fitness/inputs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'inputs.dart';

const resulttextstyle= TextStyle(
  color: Color(0XFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold
);
class ResultsPage extends StatelessWidget {

  ResultsPage({this.bmiresult,this.interpretation,this.resulttext});
  final String bmiresult,resulttext,interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    child: Center(
                      child: Text(
              'Your result',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
                    ))),
            Expanded(
              flex: 5,
              child: ReusableCard(
                boxcolor: activecardcolor,
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resulttext,style: resulttextstyle,),
                    Text(bmiresult,style: TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                    Text(interpretation,style: TextStyle(fontSize: 22),textAlign: TextAlign.center,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Center(child: Text('RECALCULATE',style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                        ),)),
                        color: Color(0xFFEB1555),
                        margin: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        height: bottomcontainerheight,
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ));
  }
}
