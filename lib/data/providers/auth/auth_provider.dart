import 'package:app/common/network/config.dart';
import 'package:app/data/models/base/base_model.dart';
import 'package:app/data/providers/base_provider.dart';
import 'package:dio/dio.dart';

abstract class IAuthProvider {
  // Future<Response<BaseModel<dynamic>?>> login(Map payload);
  // Future<Response<BaseModel<dynamic>?>> register(Map payload);
  // Future<Response<BaseModel<dynamic>?>> verifyEmail(Map payload);
}

class AuthProvider extends BaseProvider implements IAuthProvider {
  @override
  String get baseUrl => NetworkConfig.baseAPI;

  // @override
  // Future<Response<BaseModel<dynamic>?>> login(Map payload) =>
  //     post(NetworkConfig.login, data: payload);

  // @override
  // Future<Response<BaseModel<dynamic>?>> register(Map payload) =>
  //     post(NetworkConfig.register, data: payload);

  // @override
  // Future<Response<BaseModel<dynamic>?>> verifyEmail(Map payload) =>
  //     post(NetworkConfig.verifyEmail, data: payload);

  @override
  Decoder? get decoder => (json) => BaseModel.fromJson(
        json,
        // (childJson) => UserModel.fromJson(childJson),
        (childJson) => dynamic,
      );
}
