class RegisterRequest {
  final String name, email, passwrod, phoneNumber, confirmPasswrod;
  RegisterRequest({
    required this.name,
    required this.email,
    required this.confirmPasswrod,
    required this.passwrod,
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,

      'fullName': name,
      'password': passwrod,
      'phoneNumber': phoneNumber,
      'confirmPassword': confirmPasswrod,
    };
  }
}
