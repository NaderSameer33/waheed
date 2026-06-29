import 'package:waheed/_features/auth/register/data/models/register_request.dart';
import 'package:waheed/_features/auth/register/data/models/register_response.dart';
import 'package:waheed/_features/auth/register/domain/repos/register_repo.dart';
import 'package:waheed/core/constants/app_constant.dart';
import 'package:waheed/core/services/api/dio_helper.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';

class RegisterRepoImplemetaion implements RegisterRepo {
  final DioHelper dioHelper;

  RegisterRepoImplemetaion(this.dioHelper);

  @override
  Future<RegisterResponse> registerUser(RegisterRequest requset) async {
    final response = await dioHelper.sendData(
      endPoint: 'api/Account/register',
      data: requset.toJson(),
    );
    final reigsterReponse = RegisterResponse.fromJson(response.data);
    CasheHelper().savedRefreshToken(
      key: AppConstant.refreshToken,
      value: reigsterReponse.refreshToken,
    );
    CasheHelper().savedAccessToken(
      key: AppConstant.accessToken,
      value: reigsterReponse.accessToken,
    );

    return reigsterReponse;
  }
}
