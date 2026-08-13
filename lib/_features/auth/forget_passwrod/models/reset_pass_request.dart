class ResetPassRequest {
  final String email, otpCode, password, confirmPasswrod;

  ResetPassRequest({
    required this.confirmPasswrod,
    required this.email,
    required this.otpCode,
    required this.password,
  });

  Map <String , dynamic> toJson() {
    return {
      "email": email,
      "newPassword": password,
      "otpCode": otpCode,
      "confirmNewPassword": confirmPasswrod,
    };
  }
}
