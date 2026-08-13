import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/auth/login/cubit/login_state.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.dioHelper}) : super(LoginState());

  final DioHelper dioHelper;

  Future<void> login({required String email, required String passwrod}) async {
    emit(LoginLoadingState());
    try {
      final response = await dioHelper.sendData(
        endPoint: 'api/Account/login',
        data: {"email": email, "password": passwrod},
      );
      emit(LoginSuccessState(response.data['message']));
    } on DioException catch (e) {
      emit(LoginFailureState(e.response?.data['msg']));
    }
  }
}
