import 'package:flutter/material.dart';
import 'package:quiz_app/qa.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> ans = [
    Icon(
      Icons.check,
      color: Colors.greenAccent,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];

  List<Widget> scorekeep = [];
  int total = 0;

  //List<String> questions=['You have 2 legs','Elephant wears pant','Black person can be whiten?'];
  //List<bool> answers=[true,false,true];
  bool statechange = true;
  //Question qa=new Question(q:'hello how are you',a:true);
  List<Question> qa = [
    Question(q: 'india got freedom at 1947', a: true),
    Question(q: 'can we eat tea', a: false),
    Question(
        q: 'No one likes you', a: false)
  ];

  List<Expanded> expss(bool set) {
    if (set) {
      return [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'No',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  checkanswer(false);
                });
                //The user picked false.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'Yes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  checkanswer(true);
                });

                //The user picked true.
              },
            ),
          ),
        )
      ];
    } else {
      return [
        Expanded(
          child: Text(''),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'Feedback',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  Alert(context: context, title: "FeedBack", desc: "Thankyou for your feedback").show();
                });

                //The user picked true.
              },
            ),
          ),
        )
      ];
    }
  }

  int question = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qa[question].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        expss(statechange)[0], expss(statechange)[1],

        //TODO: Add a Row here as your score keeper
        Row(
          children: scorekeep,
        )
      ],
    );
  }

  void checkanswer(bool kind) {
    int out = 1;

    if (qa[question].answer == kind) {
      out = 0;
    }
    if (question < 2) {
      question++;
    }
    if (question == 2) {
      statechange = false;
    }
    scorekeep.add(ans[out]);
  }
}

