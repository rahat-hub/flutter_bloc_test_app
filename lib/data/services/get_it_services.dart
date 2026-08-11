

import 'package:flutter_bloc_test_app/data/services/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() => getIt.registerLazySingleton(() => ApiService());
