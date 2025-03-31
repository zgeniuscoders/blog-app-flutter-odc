
import 'package:blog/framework/services/authenfication_service_local_impl.dart';
import 'package:blog/framework/services/authenfication_service_network_impl.dart';
import 'package:get_it/get_it.dart';

import '../business/services/authentification_local_service.dart';
import '../business/services/authentification_network_service.dart';

var getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<AuthentificationLocalService>(
    () => AuthentificationServiceLocalImpl(),
  );
  getIt.registerLazySingleton<AuthentificationNetworkService>(
    () => AuthentificationServiceNetworkImpl(),
  );
}
