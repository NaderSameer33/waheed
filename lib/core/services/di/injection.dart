import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:waheed/_features/auth/register/data/repos/register_repo_implemetaion.dart';
import 'package:waheed/_features/auth/register/domain/repos/register_repo.dart';
import 'package:waheed/_features/auth/register/presentation/cubit/register_cubit.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

final s1 = GetIt.instance;

void setUpInjection() {
  
  s1.registerSingleton<DioHelper>(DioHelper());

  s1.registerLazySingleton<RegisterRepo>(
    () => RegisterRepoImplemetaion(
      s1<DioHelper>(),
    ),
  );

  s1.registerFactory<RegisterCubit>(
    () => RegisterCubit(
      s1<RegisterRepo>(),
    ),
  );
}
