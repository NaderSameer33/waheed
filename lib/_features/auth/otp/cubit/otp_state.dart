class OtpState {}

class OtpLoadingState extends OtpState {}

class OtpSuccessState extends OtpState {
  final String succesMessage;
  OtpSuccessState({required this.succesMessage});
}

class OtpFaliureState extends OtpState {
  final String errorMessage;
  OtpFaliureState({required this.errorMessage});
}
