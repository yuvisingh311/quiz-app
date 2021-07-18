import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('You can lead  a cow down stairs but not up stairs.', true),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Can pigs walk on two feet?', false),
    Question('Are lizards small?', false),
    Question('Can you touch your elbow with your nose?', false),
    Question('Can you fry vegetables in a pan?', false),
    Question('Are apples red fruit?', true),
    Question('Are muscles needed to move our body?', true),
    Question('Are bananas and oranges sweet vegetables?', true),
    Question('Are dogs and cats animals that live in the jungle?', false),
    Question('Can you stretch a rock?', false),
    Question('Can you brush your teeth with a shoe?', false),
    Question('Can you grow a mustache on your foot?', false),
    Question('Can you sleep in the day time?', true),
    Question('Can you ride a bike without a helmet?', false),
    Question('Can you drive a car wearing a blindfold?', false),
    Question('Can a backpack get a cold?', false),
    Question('Can you stir something with a spoon?', true),
    Question('Can you wear pajama\'s to school / work?', false),
    Question('Are musicians and artists creative?', true),
  ];
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
