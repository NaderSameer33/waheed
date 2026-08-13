class ResetPassState {}

class ResetPassStateLoadingState extends ResetPassState {}

class ResetPassStateSuccessState extends ResetPassState {
  final String message;
  ResetPassStateSuccessState(this.message);
}

class ResetPassStateFailureState extends ResetPassState {
  final String errorMessage;
  ResetPassStateFailureState(this.errorMessage);
}
