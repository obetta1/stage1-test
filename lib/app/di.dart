import 'package:bankly_app/data/network/app_api.dart';
import 'package:bankly_app/data/network/dio_factory.dart';
import 'package:bankly_app/data/repository/repository_imp.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../data/data_source/remote_data.dart';
import '../data/network/network_info.dart';
import '../domain/repository/repository.dart';
import '../domain/usecase/home_usecase.dart';
import '../presentaion/presentation.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async{

  // network info
  instance.registerLazySingleton<NetworkInfo>(
          () => NetworkInfoImp(InternetConnectionChecker()));

  //dio factory
  instance.registerLazySingleton<DioFactory>(() => DioFactory());

  //app service client
  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  // remote data source
  instance.registerLazySingleton<RemoteDataSource>(
          () => RemoteDataSourceImp(instance()));

  // repository
  instance.registerLazySingleton<Repository>(
          () => RepositoryImp(instance(), instance()));
}


initHomeModule() {
  if (!GetIt.I.isRegistered<HomeUseCase>()) {
    instance.registerFactory<HomeUseCase>(() => HomeUseCase(instance()));
    instance.registerFactory<HomeViewModel>(() => HomeViewModel(instance()));
  }
}


resetModules() {
  instance.reset(dispose: false);
  initAppModule();
  initHomeModule();
}