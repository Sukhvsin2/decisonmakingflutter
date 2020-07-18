import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Take my Concern',
          ),
        ),
        body: takeConcern(),
      ),
    ),
  );
}

class takeConcern extends StatefulWidget {
  @override
  _takeConcernState createState() => _takeConcernState();
}

class _takeConcernState extends State<takeConcern> {
  String answer = 'Tap 8 ball for an answer';
  @override
  Widget build(BuildContext context) {
    bool val = true;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              setState(() {
                answer = answers();
              });
            },
            child: Image(
              image: AssetImage('images/external-content.duckduckgo.png'),
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          Text(
            '$answer',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}

String answers() {
  bool val = true;
  var ans = [
    'It is certain',
    'Without a doubt',
    'You may rely on it',
    'Yes definitely',
    'It is decidedly so',
    'As I see it, yes',
    'Most likely',
    'Yes',
    'Outlook good',
    'Signs point to yes',
    'Reply hazy try again',
    'Better not tell you now',
    'Ask again later',
    'Cannot predict now',
    'Concentrate and ask again',
    'Don’t count on it',
    'Outlook not so good',
    'My sources say no',
    'Very doubtful',
    'My reply is no'
  ];

  var r = new Random();
  return (ans[(r.nextInt(ans.length) + 1)]);
}
