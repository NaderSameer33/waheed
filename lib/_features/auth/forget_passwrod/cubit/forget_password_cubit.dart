import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/auth/forget_passwrod/cubit/forget_password_state.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit({required this.dioHelper}) : super(ForgetPasswordState());

  final DioHelper dioHelper;

  Future<void> forgetPassword({required String email}) async {
    emit(ForgetPasswordLoadingState());

    try {
      final response = await dioHelper.sendData(
        endPoint: 'api/Account/forgot-password',
        data: {
          'email': email,
        },
      );
      emit(ForegetPasswrodSuccessState(response.data['message']));
    } on DioException catch (e) {
      emit(ForgetPasswordFailureState(e.response?.data['msg']));
    }
  }
}
