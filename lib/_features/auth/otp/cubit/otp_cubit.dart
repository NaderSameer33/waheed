import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/auth/otp/cubit/otp_state.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit(this.dioHelper) : super(OtpState());
  final DioHelper dioHelper;

  Future<void> verifiyOtp({
    required String email,
    required String otpCode,
  }) async {
    emit(OtpLoadingState());
    try {
      final response = await dioHelper.sendData(
        endPoint: 'api/Account/verify-otp',
        data: {
          "email": email,
          "otpCode": otpCode,
        },
      );

      emit(OtpSuccessState(succesMessage: response.data['message']));
    } on DioException catch (e) {
      emit(OtpFaliureState(errorMessage: e.response?.data['msg']));
    }
  }
}
