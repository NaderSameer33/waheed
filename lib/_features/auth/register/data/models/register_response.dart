class RegisterResponse {
  late String email,
      fullName,
      accessToken,
      refreshToken,
      message,
      accesstokenExperid,
      refreshTokenExperid;

  late bool isAuthcated;

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    email = json['email'] ?? '';
    fullName = json['fullName'] ?? '';
    accessToken = json['token'] ?? '';
    refreshToken = json['refreshToken'] ?? '';
    accesstokenExperid = json['tokenExpiry'] ?? '';
    refreshTokenExperid = json['refreshToken'] ?? '';
    isAuthcated = json['isAuthenticated'] ?? false;
    message = json['message'] ?? '';
  }
}
