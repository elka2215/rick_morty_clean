import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class Modules {
  @Named('Base_url')
  String get baseUrl => 'https://rickandmortyapi.com/api';

  @lazySingleton
  Dio dio(@Named('Base_url') String url) {
    final dio = Dio(BaseOptions(baseUrl: baseUrl));
    var logger = Logger(printer: PrettyPrinter());
    dio.interceptors.add(
      InterceptorsWrapper(
        // onRequest: (options, handler) {
        //   logger.i("Starting Request: ${options.method} ${options.path}");
        //   return handler.next(options);
        // },
        // onResponse: (response, handler) {
        //   logger.i(
        //       "Completed Request: ${response.statusCode} ${response.statusMessage}");
        //   return handler.next(response);
        // },
        onError: (e, handler) {
          logger.e("Error: ${e.message}");
          return handler.next(e); //continue
        },
      ),
    );
    // dio.interceptors.add(TokenInterceptor());
    return dio;
  }
}
