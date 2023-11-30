import 'package:dio/io.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mang_xa_hoi/configs/app_configs.dart';
import 'package:mang_xa_hoi/utils/shared_pref_util.dart';
// import 'package:mang_xa_hoi/database/secure_storage_helper.dart';

enum DioMethod {
  post,
  get,
  delete,
  put,
}

class AppDio {
  Dio dio = Dio();

  BaseOptions options = BaseOptions(
      contentType: 'application/json',
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      baseUrl: AppConfigs.baseUrl);

  AppDio() {
    dio.options = options;
    dio.httpClientAdapter = DefaultHttpClientAdapter();
    dio.interceptors.add(InterceptorsWrapper(
        onError: (DioError error, ErrorInterceptorHandler handler) async {
      if (error.response?.statusCode == 401) {
        debugPrint(
            '=========================================== onErrorIntercepor 403');
      }
      return handler.next(error);
    }, onRequest: (options, handler) async {
      final token = getToken(options.baseUrl);
      debugPrint(token);
      if (token.isNotEmpty == true) {
        options.headers["Authorization"] = token;
      }
      options.headers['Connection'] = 'keep-alive';
      options.headers['Accept'] = 'application/json';
      handler.next(options);
    }));
  }

  String getToken(String baseUrl) {
    // if (baseUrl.contains('https://api.stringee.com')) {
    //   return SharedPrefsUtil.shared.getUser()?.stringeeToken ?? '';
    // }
    // return 'Bearer ${SharedPrefsUtil.shared.getUser()?.apiToken ?? ''}';

    return '';
  }

  Future<dynamic> sendPostMesageRequest(
      String apiPath, dynamic body, Map<String, dynamic>? param) async {
    try {
      debugPrint(
          '====================================== START POST REQUEST =============================================');
      debugPrint('API:$apiPath \nBODY: $body-------------');
      debugPrint(
          '======================================  END POST REQUEST  =========================================\n');
      final response =
          await dio.post(apiPath, data: body, queryParameters: param);

      debugPrint(
          '====================================== START RESPONSE API =========================================');
      debugPrint('API: $apiPath  \nRESPONSE: $response ------------',
          wrapWidth: 10000000);
      debugPrint(
          '======================================  END RESPONSE API  =========================================\n');
      return await _response(response, apiPath, null, DioMethod.post);
    } on DioError catch (error) {
      return _handleError(error, apiPath);
    }
  }

  Future<dynamic> sendPostRequest(String apiPath, Map<String, dynamic>? body,
      Map<String, dynamic>? param) async {
    try {
      debugPrint(dio.options.baseUrl);
      debugPrint(
          '====================================== START POST REQUEST =============================================');
      debugPrint('API:$apiPath \nBODY: $body-------------');
      debugPrint(
          '======================================  END POST REQUEST  =========================================\n');
      Map<String, dynamic>? bodys = body;
      final response =
          await dio.post(apiPath, data: bodys, queryParameters: param);

      debugPrint(
          '====================================== START RESPONSE API =========================================');
      debugPrint('API: $apiPath  \nRESPONSE: $response ------------',
          wrapWidth: 10000000);
      debugPrint(
          '======================================  END RESPONSE API  =========================================\n');
      return await _response(response, apiPath, body, DioMethod.post);
    } on DioError catch (error) {
      return _handleError(error, apiPath);
    }
  }

  Future<dynamic> sendGetRequest(
      String apiPath, Map<String, dynamic>? param) async {
    try {
      debugPrint(
          '====================================== START GET REQUEST ==========================================');
      debugPrint('DOMAIN: ${dio.options.baseUrl}\n'
          'API:$apiPath\n'
          'PARAM:$param\n');
      debugPrint(
          '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  END GET REQUEST  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n');
      Map<String, dynamic>? params = param;
      final response = await dio.get(apiPath, queryParameters: params);
      debugPrint(
          '====================================== START GET RESPONSE =========================================');
      debugPrint('API: $apiPath  \nRESPONSE: $response', wrapWidth: 999999999);
      debugPrint(
          '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  END GET RESPONSE  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n');
      return await _response(response, apiPath, param, DioMethod.get);
    } on DioError catch (error) {
      return _handleError(error, apiPath);
    }
  }

  Future<dynamic> sendPutRequest(
      String apiPath, Map<String, dynamic>? param) async {
    try {
      debugPrint(
          '====================================== START PUT REQUEST ==========================================');
      debugPrint('API:$apiPath \nPARAM: $param');
      debugPrint(
          '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  END PUT REQUEST  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n');
      Map<String, dynamic>? params = param;
      final response = await dio.put(apiPath, data: params);
      debugPrint(
          '====================================== START PUT RESPONSE =========================================');
      debugPrint('API: $apiPath  \nRESPONSE: $response', wrapWidth: 10000000);
      debugPrint(
          '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  END PUT RESPONSE  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n');
      return await _response(response, apiPath, param, DioMethod.put);
    } on DioError catch (error) {
      return _handleError(error, apiPath);
    }
  }

  Future<dynamic> sendDeleteRequest(
      String apiPath, Map<String, dynamic>? param) async {
    try {
      debugPrint(
          '====================================== START DEL REQUEST ==========================================');
      debugPrint('API:$apiPath \nPARAM: $param-------------');
      debugPrint(
          '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  END DEL REQUEST  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n');
      Map<String, dynamic>? params = param;
      final response = await dio.delete(apiPath, queryParameters: params);
      debugPrint(
          '====================================== START DEL RESPONSE =========================================');
      debugPrint('API: $apiPath  \nRESPONSE: $response', wrapWidth: 10000000);
      debugPrint(
          '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^  END DEL RESPONSE  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n');
      return await _response(response, apiPath, param, DioMethod.delete);
    } on DioError catch (error) {
      return _handleError(error, apiPath);
    }
  }

  Future<dynamic> uploadFile(String apiPath, String fileUploadPath) async {
    try {
      dio.options.contentType = "multipart/form-data";
      debugPrint('------------ Request API Upload: $apiPath-------------');
      var formData = FormData.fromMap(
          {'file': await MultipartFile.fromFile(fileUploadPath)});
      final response = await dio.post(apiPath, data: formData);
      debugPrint(
          '------------  Response api Upload: $apiPath - data: $response ------------');
      dio.options.contentType = "application/json";
      return await _response(response, apiPath, null, DioMethod.put);
    } on DioError catch (error) {
      dio.options.contentType = "application/json";
      return _handleError(error, apiPath);
    }
  }

  dynamic _handleError(DioError error, String apiPath) {
    debugPrint('------data: handleError $apiPath ${error.message}');
    EasyLoading.dismiss(animation: true);
    if (error.response != null) {
      return error;
    }
    return error;
  }

  dynamic _response(Response<dynamic> response, String apiPath,
      Map<String, dynamic>? param, DioMethod method) async {
    if (response.data.toString().isEmpty) {
      return response.data;
    }
    return response.data;
  }
}
