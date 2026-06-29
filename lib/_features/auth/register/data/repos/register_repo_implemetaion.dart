import 'package:waheed/_features/auth/register/data/models/register_request.dart';
import 'package:waheed/_features/auth/register/data/models/register_response.dart';
import 'package:waheed/_features/auth/register/domain/repos/register_repo.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class RegisterRepoImplemetaion implements RegisterRepo {
  final DioHelper dioHelper;

  RegisterRepoImplemetaion(this.dioHelper);

  @override
  Future<RegisterResponse> registerUser(RegisterRequest requset) async {
    final response = await dioHelper.sendData(
      endPoint: 'api/Account/register',
      data: requset.toJson(),
    );

    return RegisterResponse.fromJson(response.data);
  }
}
