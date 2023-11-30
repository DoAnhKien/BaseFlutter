import 'package:app/common/network/shared_preference.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HttpClient {
  static final HttpClient _singleton = HttpClient._internal();

  factory HttpClient() {
    return _singleton;
  }

  HttpClient._internal();

  Dio httpClient = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ));

  void initDio() {
    httpClient.interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
      ),
    );
    httpClient.interceptors.add(InterceptorsWrapper(
      onRequest: (requestOptions, handler) async {
        final token = await _getToken();
        if (token.isNotEmpty) {
          Get.log('Bearer $token');
          requestOptions.headers["Authorization"] = 'Bearer $token';
        }
        requestOptions.headers['Connection'] = 'keep-alive';
        handler.next(requestOptions);
      },
      onError: (error, handler) {
        handler.next(error);
      },
    ));
  }

  Future<String> _getToken() async {
    return SharedPreference.shared.getToken();
  }
}
