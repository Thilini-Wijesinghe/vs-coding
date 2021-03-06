import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
  
  
class MyAppState extends State<MyApp>{  
  var questionIndex=0;

  void answerQuetion(){
    setState(() {
      questionIndex=questionIndex + 1;  
    });   
    print(questionIndex);
  }

  @override  
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuetion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed:() => print('Answer 2 choosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: (){
                print('answer 3 choosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
