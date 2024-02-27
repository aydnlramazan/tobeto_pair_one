abstract class AsyncCourseState {
  List<Object?> get props => [];
}

class InitialVideo extends AsyncCourseState {}

class LoadingVideo extends AsyncCourseState {}

class LoadedVideo extends AsyncCourseState {
  final bool isWatched;

  LoadedVideo({required this.isWatched});
  @override
  List<Object?> get props => [isWatched];
}

class ErrorVideo extends AsyncCourseState {}
