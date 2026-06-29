import 'package:waheed/_features/auth/register/data/models/register_response.dart';

class RegisterState {}

class RegisterIntinalState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSucccessState extends RegisterState {
  final RegisterResponse response;
  RegisterSucccessState({required this.response});
}

class RegisterFaliureState extends RegisterState {
  final String errorMessage;
  RegisterFaliureState({required this.errorMessage});
}
