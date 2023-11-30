import 'dart:convert';
import 'dart:io';

import 'package:app/common/network/app_dio.dart';

class ApiWebserver {
  final AppDio _appDio = AppDio();
  static final ApiWebserver shared = ApiWebserver._internal();
  ApiWebserver._internal();

  Future<dynamic> updateToken(
    String fcmToken,
  ) async {
    final body = {
      'fcm_token': fcmToken,
    };
    final response =
        await _appDio.sendPutRequest('/api/auth/update-token', body);
    return response;
  }
}
