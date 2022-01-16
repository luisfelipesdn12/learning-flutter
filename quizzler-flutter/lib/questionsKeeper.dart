import 'package:quizzler/models/question.dart';

class QuestionsKeeper {
  List<Question> questions;
  int currentQuestionIndex = 0;
  Question currentQuestion;

  QuestionsKeeper(this.questions) {
    _updateCurrentQuestion();
  }

  void _updateCurrentQuestion() {
    if (currentQuestionIndex < questions.length) {
      currentQuestion = questions[currentQuestionIndex];
    } else {
      currentQuestion = null;
    }
  }

  void next() {
    currentQuestionIndex++;
    _updateCurrentQuestion();
  }

  void reset() {
    currentQuestionIndex = 0;
    _updateCurrentQuestion();
  }

  void previous() {
    currentQuestionIndex--;
    _updateCurrentQuestion();
  }
}
