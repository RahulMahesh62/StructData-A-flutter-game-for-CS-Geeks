import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('A stack is called a LIFO data structure.',true),
    Question('An array is a random access data structure; a stack is not.',true),
    Question('Stacks can be used to print a list backwards without using recursion.',true),
    Question('You cannot write a recursive algorithm to implement a sequential search algorithm.',false),
    Question('To access the fifth element in a list, we must first traverse the first four elements.',true),
    Question('The recursive algorithm must have three or more base cases.',false),
    Question('A function that calls itself is an iterative function.',false),
    Question('A queue cannot be implemented using in an array.',false),
    Question('Every node in a linked list has two components: one to store the relevant information and one to store the address.',true),
    Question('Building a linked list backwards places the new item to be added at the end of the linked list.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(){
    if(_questionNumber>=_questionBank.length - 1){
      return true;
    }
    else{
      return false;
    }
  }

  void reset(){
    _questionNumber=0;
  }
}
