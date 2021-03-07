import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results.dart';
import 'main.dart';
import 'calculator.dart';
const bottomcontainerheight = 60.0;
const activecardcolor = Color(0xFF1D1E33);
const inactivecardcolor = Color(0xFF111328);
const labeltextstyle = TextStyle(
  fontSize: 16.0,
  color: Color(0xFF8D8E98),
);

const numbertextstyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const resulttextstyle = TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w900,
);
enum Gender {
  male,
  female,
}
//gender card state
Gender selected_gender;
int height = 180, weight = 60, age = 50;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, //helps to increase the widget size to max available
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('tap male');

                      setState(() {
                        selected_gender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      boxcolor: selected_gender == Gender.male
                          ? activecardcolor
                          : inactivecardcolor,
                      childcard: IconContent(
                          icon: FontAwesomeIcons.male, label: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('tap female');

                      setState(() {
                        selected_gender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      boxcolor: selected_gender == Gender.female
                          ? activecardcolor
                          : inactivecardcolor,
                      childcard: IconContent(
                        icon: FontAwesomeIcons.female,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              boxcolor: activecardcolor,
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: labeltextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: numbertextstyle,
                      ),
                      Text(
                        'CM',
                        style: labeltextstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0XFFEB1555),
                      overlayColor: Color(0X49EB1555),
                      inactiveTrackColor: Colors.grey,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,

                      //inactiveColor: Colors.blueGrey,
                      onChanged: (double newvalue) {
                        print(newvalue);
                        setState(() {
                          height = newvalue.round().toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: labeltextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numbertextstyle,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: FloatingActionButton(
                                heroTag: "btn4",
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight += 1;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: FloatingActionButton(
                                heroTag: "btn3",
                                child: Icon(Icons.remove),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    weight -= 1;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    boxcolor: activecardcolor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    childcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: labeltextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: numbertextstyle,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: FloatingActionButton(
                                heroTag: "btn2",
                                child: Icon(Icons.add),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age += 1;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: FloatingActionButton(
                                heroTag: "btn1",
                                child: Icon(Icons.remove),
                                backgroundColor: Color(0xFF4C4F5E),
                                onPressed: () {
                                  setState(() {
                                    age -= 1;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    boxcolor: activecardcolor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Calculator calc=Calculator(height: height,weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultsPage(bmiresult: calc.bmi(),resulttext: calc.getresult(),interpretation: calc.interpretation(),);
                  },
                ),
              );
            },
            child: Container(
              child: Center(child: Text('CALCULATE',style: resulttextstyle,)),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomcontainerheight,
            ),
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: labeltextstyle)
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  Color boxcolor;
  Widget childcard;
  ReusableCard({this.boxcolor, this.childcard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childcard,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: boxcolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
