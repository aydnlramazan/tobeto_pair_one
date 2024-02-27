import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_pair_one/blocs/exam_bloc/exam_event.dart';
import 'package:tobeto_pair_one/blocs/exam_bloc/exam_state.dart';

class ExamBloc extends Bloc<ExamEvent, ExamState> {
  ExamBloc() : super(InitialExam());

  Stream<ExamState> mapEventToState(ExamEvent event) async* {
    if (event is StartExam) {
      yield NotStartedExam();
    } else if (event is FinishExam) {
      yield CompletedExam();
    } else if (event is SubmitAnswer) {
      if (event.skipped) {
        yield InProgressExam();
      } else {
        //dataya soru ve cevaplar eklnip burada doğruluğu kontrol edilebilir!
        yield InProgressExam();
      }
    } else if (event is CancelExam) {
      yield InitialExam();
    }
  }
}
