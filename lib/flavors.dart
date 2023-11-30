// ignore_for_file: constant_identifier_names

enum Environment { STAGING, PRODUCTION, UAT }

class BuildConfig {
  static Map<String, dynamic> _config = <String, dynamic>{};

  static void setEnvironment(Environment env) {
    switch (env) {
      case Environment.STAGING:
        _config = _Config.stagingConfig;
        break;
      case Environment.PRODUCTION:
        _config = _Config.productionConfig;
        break;
      case Environment.UAT:
        _config = _Config.uatConfig;
        break;
    }
  }

  static bool get debugMode => _config == _Config.stagingConfig;

  static get baseDomain {
    return _config[_Config.baseUrl];
  }
}

class _Config {

  static const baseUrl = 'BaseUrl';

  static Map<String, dynamic> stagingConfig = {
    baseUrl: '',
  };

  static Map<String, dynamic> productionConfig = {
    baseUrl: '',
  };

  static Map<String, dynamic> uatConfig = {
    baseUrl: '',
  };

}
