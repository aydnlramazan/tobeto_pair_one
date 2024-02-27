abstract class ExamState {}

class InitialExam extends ExamState {}

class NotStartedExam extends ExamState {}

class InProgressExam extends ExamState {}

class CompletedExam extends ExamState {}

class ErrorExam extends ExamState {
  final String? errorMessage;
  ErrorExam({this.errorMessage});
}
