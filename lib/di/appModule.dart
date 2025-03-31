import 'package:blog/business/services/article_service_impl.dart';
import 'package:get_it/get_it.dart';

import '../domain/services/article_service.dart';

var getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<ArticleService>(() => ArticleServiceImpl());
}
