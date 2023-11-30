import 'package:app/data/providers/auth/auth_provider.dart';
import 'package:get/get.dart';
import '../../models/base/base_model.dart';

abstract class IAuthRepo {
  // Future<BaseModel<UserModel>?> login(String email, String password);
  // Future<BaseModel<UserModel>?> register(
  //     String email, String password, String phone, String name);
  // Future<BaseModel<UserModel>?> verifyEmail(String email, String code);
}

class AuthRepo extends GetxService implements IAuthRepo {
  final IAuthProvider _provider;
  AuthRepo(this._provider);

  // @override
  // Future<BaseModel<UserModel>?> login(String email, String password) async {
  //   final body = {'email': email, 'password': password};
  //   final res = await _provider.login(body);
  //   return res.data;
  // }

  // @override
  // Future<BaseModel<UserModel>?> verifyEmail(String email, String code) async {
  //   final body = {'email': email, 'code': code};
  //   final res = await _provider.verifyEmail(body);
  //   return res.data;
  // }

  // @override
  // Future<BaseModel<UserModel>?> register(
  //     String email, String password, String phone, String name) async {
  //   final body = {
  //     'email': email,
  //     'password': password,
  //     'name': name,
  //     'phone': phone
  //   };
  //   final res = await _provider.login(body);
  //   return res.data;
  // }
}
