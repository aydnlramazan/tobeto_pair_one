abstract class ExamEvent {}

class StartExam extends ExamEvent {}

class FinishExam extends ExamEvent {}

class SubmitAnswer extends ExamEvent {
  String? answer;
  bool skipped;
  SubmitAnswer({this.answer, this.skipped = false});
}

class CancelExam extends ExamEvent {}
