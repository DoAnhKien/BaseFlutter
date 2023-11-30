import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class SharedPreference {
  static final shared = SharedPreference();

  Box? _hiveBox;

  Future<void> openHiveBox() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    _hiveBox = await Hive.openBox("BeautifulConnect");
  }

  read(String key) {
    return _hiveBox?.get(key);
  }

  Future<void> save(String key, value) async {
    await _hiveBox?.put(key, value);
  }

  Future<void> remove(String key) async {
    await _hiveBox?.delete(key);
  }

  // Future<void> saveUser(UserModel user) async {
  //   final data = user.toJson();
  //   await save('user_data', data);
  // }

  // UserModel? getUser() {
  //   final data = _hiveBox?.get('user_data');
  //   if (data != null) {
  //     final map = Map<String, dynamic>.from(data);
  //     final user = UserModel.fromJson(map);
  //     return user;
  //   }
  //   return null;
  // }

  Future<void> saveToken(String token) async {
    await save('token', token);
  }

  Future<String> getToken() async {
    final data = _hiveBox?.get('token');
    if (data != null && data is String) {
      return data;
    }
    return '';
  }
}
