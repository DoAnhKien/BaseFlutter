import 'package:app/common/network/http_client.dart';
import 'package:app/common/network/network_util.dart';
import 'package:app/common/network/shared_preference.dart';
import 'package:app/data/services/message_service.dart';
import 'package:app/flavors.dart';
import 'package:app/localizations/localization_service.dart';
import 'package:app/routes/app_pages.dart';
import 'package:app/themes/themes_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await setEnvironment();
  HttpClient().initDio();
  await SharedPreference.shared.openHiveBox();
  NetworkUtil();
  Get.lazyPut(() {}, fenix: true);
  Get.put(
    MessageService(),
    permanent: true,
  );
  runApp(MyApp());
}

const platform = MethodChannel('app_get_flavor');

Future<void> setEnvironment() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? flavor = await platform.invokeMethod('getFlavor');
  Get.log('[LOG][FLAVOR] Set environment: $flavor');
  switch (flavor) {
    case 'stg':
      BuildConfig.setEnvironment(Environment.STAGING);
      break;
    case 'product':
      BuildConfig.setEnvironment(Environment.PRODUCTION);
      break;
    case 'uat':
      BuildConfig.setEnvironment(Environment.UAT);
      break;
    default:
      throw Exception("[LOG][FLAVOR] Can't load: $flavor");
  }
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    configLoading();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ThemeProvider.colorBlack,
      systemNavigationBarColor: ThemeProvider.colorStatusBar,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        builder: (context, child) {
          return GestureDetector(
            onPanDown: (_) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: GetMaterialApp(
                  theme: ThemeData(
                      colorScheme: ThemeData().colorScheme.copyWith(
                          primary: ThemeProvider.colorPrimary.withOpacity(0.5)),
                      focusColor: ThemeProvider.colorPrimary,
                      primaryColor: ThemeProvider.colorPrimary),
                  navigatorKey: navigatorKey,
                  title: 'BaseApp',
                  fallbackLocale: LocalizationService.fallbackLocale,
                  debugShowCheckedModeBanner: false,
                  initialRoute: AppPages.INITIAL,
                  getPages: AppPages.routes,
                  translations: LocalizationService(),
                  locale: const Locale('vi', 'VN'),
                  builder: EasyLoading.init(),
                )),
          );
        });
  }

  void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.threeBounce
      ..loadingStyle = EasyLoadingStyle.custom
      ..progressWidth = double.infinity
      ..indicatorSize = 42
      ..radius = 10.0
      ..progressColor = ThemeProvider.colorPrimary
      ..backgroundColor = Colors.transparent
      ..indicatorColor = ThemeProvider.colorPrimary
      ..textColor = Colors.black
      ..maskColor = ThemeProvider.colorBackgroundLoading
      ..maskType = EasyLoadingMaskType.custom
      ..userInteractions = false
      ..boxShadow = []
      ..dismissOnTap = false;
  }
}
