import 'question.dart';

class QuizMaster {
  int _questionNumber = 0;

  //Class has only one Attribute, the list below.
  List<Question> _questionBank = [
    Question(q: 'Ayla will love her father because he can sing', a: true),
    Question(
        q: 'Ayla looks like her mother and this is much better :)', a: true),
    Question(q: 'Ayla\'s mother(widad) thinks that she can cook', a: true),
    Question(
        q: 'Ayla\'s father (yavuz) is getting fatter because W cooks very nice food',
        a: false),
    Question(
        q: 'Both her father & mother don\'t like Uncle Abdallah anymore',
        a: false),
    Question(
        q: 'Ayla will definitely rob Uncle Yunus and Khalto Yomen', a: true),
    Question(
        q: 'Once Ayla comes, her parents will gidi gidi tickle her feet',
        a: true),
    Question(q: 'Widad is an AWESOME mom.', a: false),
    Question(q: 'Widad is NOT an awesome mom', a: true),
    Question(q: 'Khalas, Widad is an OK mom.', a: true),
    Question(q: 'Widad loves Ayla more than she loves Abuzu', a: true),
    Question(q: 'Ayla\'s father works HAO for making some money', a: true),
    Question(q: 'Ayla will be a very lucky girl in sha Allah', a: true),
    Question(
        q: 'Ayla deserves a huge amount of mahir, actually never enough',
        a: true),
    Question(
        q: 'Abuzu & Wireru will buy Ayla everything she asks for.', a: false),
    Question(
        q: 'Ayla will watch YouTube and will use Instagram all the time',
        a: false),
    Question(
        q: 'Widad will cook her cookies while Abuzu sings to her.', a: true),
    Question(q: 'This quiz is getting little ridiculous', a: false),
    Question(q: 'Ayla does not want  a sister soon.', a: false),
    Question(q: 'Ayla does not have cute socks -halooooom--.', a: false),
    Question(
        q: 'Ayla is like a cat, so she likes to eat lots of fishes nom nom nommmyy.',
        a: true),
    Question(
        q: 'She is as smart as her mother and as nice as her father.',
        a: false),
    Question(
        q: 'Ayla is as smart as her father and as pretty as her mother',
        a: true),
    Question(
        q: 'Ayla\'s car is so cool that she needs a licence to ride to it',
        a: true),
    Question(q: 'Khalas, this much ridicule is enough.', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Correct Answer!');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
