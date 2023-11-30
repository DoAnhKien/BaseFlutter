import 'package:app/common/network/api_webserver.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mang_xa_hoi/app_controller.dart';
import 'package:mang_xa_hoi/models/user_model/user_model.dart';
import 'package:mang_xa_hoi/ui/commons/app_snackbar.dart';
import 'package:mang_xa_hoi/utils/shared_pref_util.dart';

import '../models/user_model/user_model_request.dart';
import '../network/api_webserver.dart';

///
///
/// Use This In Controller
/// AuthRepository authRepository = AuthRepositoryImpl(apiWebServer: ApiWebserver.shared);
///
///

abstract class AuthRepository {
  Future<bool> updateShowInfo(Map<String, dynamic> data);
}

class AuthRepositoryImpl extends AuthRepository {
  ApiWebserver apiWebServer;

  AuthRepositoryImpl({required this.apiWebServer});

  @override
  Future<bool> updateShowInfo(Map<String, dynamic> data) async {
    final response = await apiWebServer.updateShowInfo(data);
    if (response is DioError) {
      // Handler show Error
      return false;
    }
    return true;
  }
}
