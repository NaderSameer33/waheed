class ForgetPasswordState {}

class ForgetPasswordLoadingState extends ForgetPasswordState {}

class ForegetPasswrodSuccessState extends ForgetPasswordState {
  final String message;
  ForegetPasswrodSuccessState(this.message);
}

class ForgetPasswordFailureState extends ForgetPasswordState {
  final String message;
  ForgetPasswordFailureState(this.message);
}
