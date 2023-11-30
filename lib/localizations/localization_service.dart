import 'dart:ui';

import 'vi_VN.dart';
import 'package:get/get.dart';
import 'en_US.dart';

class LocalizationService extends Translations {
  LocalizationService();

  static const fallbackLocale = Locale('vi', 'VN');

  static const listLocaleSupport = [
    Locale('en', 'US'),
    Locale('vi', 'VN'),
  ];

  static void changeLocale(String langCode) {
    final locale = _getLocaleFromLanguage(langCode: langCode);
    Get.updateLocale(locale);
  }

  static Locale _getLocaleFromLanguage({String langCode = 'vi'}) {
    Locale locale = fallbackLocale;
    switch (langCode) {
      case 'en':
        locale = const Locale('en', 'US');
        break;
      case 'vn':
        locale = const Locale('vi', 'VN');
        break;
    }
    return locale;
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'vi_VN': viVN,
      };
}
