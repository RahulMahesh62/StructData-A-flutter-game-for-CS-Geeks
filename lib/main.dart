import 'package:flutter/material.dart';
import 'package:structdata/Question.dart';
import 'Question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  List<Icon> scoree = [];

  List<Question> questionBank = [
    Question(q:'A stack is called a LIFO data structure.', a: true),
    Question(q:'An array is a random access data structure; a stack is not.', a: true),
    Question(q:'Stacks can be used to print a list backwards without using recursion.', a: true),
    Question(q:'You cannot write a recursive algorithm to implement a sequential search algorithm.', a: false),
    Question(q:'To access the fifth element in a list, we must first traverse the first four elements.', a: true),
    Question(q:'The recursive algorithm must have three or more base cases.', a: false),
    Question(q:'A function that calls itself is an iterative function.', a: false),
    Question(q:'A queue cannot be implemented using in an array.', a: false),
    Question(q:'Every node in a linked list has two components: one to store the relevant information and one to store the address.', a: true),
    Question(q:'Building a linked list backwards places the new item to be added at the end of the linked list.', a: false),
  ];


  int questionn=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionn].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
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
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAns = questionBank[questionn].questionAnswer;
                if(correctAns==true){
                  print('right');
                }
                else{
                  print('false');
                }
                setState(() {
                  questionn++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAns = questionBank[questionn].questionAnswer;
                if(correctAns==false){
                  print('right');
                }
                else{
                  print('false');
                }
                setState(() {
                  questionn++;
                });
              },
            ),
          ),
        ),
        Row(
          children: scoree,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
