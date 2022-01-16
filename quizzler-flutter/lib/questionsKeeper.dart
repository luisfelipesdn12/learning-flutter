import 'package:quizzler/models/question.dart';

class QuestionsKeeper {
  List<Question> _questions = [
    Question('We\'re no strangers to love', true),
    Question('You know the rules and so do I', false),
    Question('I just want to tell you how I\'m feeling', true),
    Question('Gotta make you understand', false),
    Question('Never gonna give you up', false),
    Question('Never gonna let you down', false),
    Question('Never gonna run around and desert you', false),
    Question('Never gonna make you cry', false),
    Question('Never gonna say goodbye', false),
    Question('Never gonna tell a lie and hurt you', true),
  ];
  int currentQuestionIndex = 0;

  Question get currentQuestion {
    if (currentQuestionIndex < _questions.length) {
      return _questions[currentQuestionIndex];
    } else {
      return null;
    }
  }

  void next() {
    currentQuestionIndex++;
  }

  void reset() {
    currentQuestionIndex = 0;
  }

  void previous() {
    currentQuestionIndex--;
  }
}
