import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/auth/register/data/models/register_request.dart';
import 'package:waheed/_features/auth/register/domain/repos/register_repo.dart';
import 'package:waheed/_features/auth/register/presentation/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepo) : super(RegisterIntinalState());

  final RegisterRepo registerRepo;

  Future<void> registerUser(RegisterRequest request) async {
    emit(RegisterLoadingState());
    try {
      final response = await registerRepo.registerUser(request);
      emit(RegisterSucccessState(response: response));
    } on DioException catch (dioError) {
      emit(
        RegisterFaliureState(errorMessage: dioError.response!.data.toString()),
      );
    }
  }
}
