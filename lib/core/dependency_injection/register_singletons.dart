import '../dio/base_dio.dart';
import '../dio/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di_container.dart';

Future<void> registerSingletons() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  BaseOptions options = BaseOptions(
    baseUrl: restBaseUrl,
    followRedirects: false,
    headers: {
      'Content-Type': 'application/json',
    },
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
  );

  /// Singleton register
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);
  getIt.registerSingleton<BaseDio>(
    DioClient(
      options: options,
      dio: Dio(),
    ),
  );
}
