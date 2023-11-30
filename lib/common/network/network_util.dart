import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkUtil {
  static final NetworkUtil _singleton = NetworkUtil._internal();

  factory NetworkUtil() {
    return _singleton;
  }

  NetworkUtil._internal() {
    _subscriptionConnectivity();
  }

  ConnectivityResult _result = ConnectivityResult.wifi;

  ConnectivityResult get result => _result;

  bool get hasConnect {
    return result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile ||
        result == ConnectivityResult.ethernet;
  }

  Stream<ConnectivityResult> get onConnectivityChanged =>
      Connectivity().onConnectivityChanged;

  void _subscriptionConnectivity() async {
    _result = await Connectivity().checkConnectivity();
    Connectivity().onConnectivityChanged.listen((event) {
      _result = event;
    });
  }
}
