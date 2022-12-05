import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: () => print('Pressed 1'),
              autofocus: true,
              clipBehavior: Clip.antiAlias,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              autofocus: true,
              clipBehavior: Clip.antiAlias,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Pressed 3'),
              autofocus: true,
              clipBehavior: Clip.antiAlias,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
