import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/auth/forget_passwrod/cubit/reset_pass_state.dart';
import 'package:waheed/_features/auth/forget_passwrod/models/reset_pass_request.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  ResetPassCubit({required this.dioHelper}) : super(ResetPassState());

  final DioHelper dioHelper;

  Future<void> resetPassword({required ResetPassRequest resetRequest}) async {
    emit(ResetPassStateLoadingState());
    try {
      final response = await dioHelper.sendData(
        endPoint: 'api/Account/reset-password',
        data: resetRequest.toJson(),
      );
      emit(ResetPassStateSuccessState(response.data['message']));
    } on DioException catch (e) {
      emit(ResetPassStateFailureState(e.response?.data['msg']));
    }
  }
}
