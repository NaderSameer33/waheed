class LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  final String succesMessage;
  LoginSuccessState(this.succesMessage);
}

class LoginFailureState extends LoginState {
  final String errorMessage;
  LoginFailureState(this.errorMessage);
}
