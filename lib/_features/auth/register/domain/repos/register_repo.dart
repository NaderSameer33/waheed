import 'package:waheed/_features/auth/register/data/models/register_request.dart';
import 'package:waheed/_features/auth/register/data/models/register_response.dart';

abstract class RegisterRepo {
  Future<RegisterResponse> registerUser(RegisterRequest requset);
}
