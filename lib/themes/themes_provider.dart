import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeProvider {
  ThemeProvider._();
  //FONT
  static const String fontBold = 'Inter-Bold';
  static const String fontLight = 'Inter-Light';
  static const String fontMedium = 'Inter-Medium';
  static const String fontRegular = 'Inter-Regular';
  static const String fontSemiBold = 'Inter-SemiBold';

  //FONTSIZE
  static double fontSize28 = 28.sp;
  static double fontSize24 = 24.sp;
  static double fontSize20 = 20.sp;
  static double fontSize18 = 18.sp;
  static double fontSize16 = 16.sp;
  static double fontSize14 = 14.sp;
  static double fontSize12 = 12.sp;
  static double fontSize10 = 10.sp;
  static double fontSize8 = 8.sp;

  // COLOR
  static const Color colorPrimary = Color(0xFF161616);
  static const Color colorBackgroundScreen = Color(0xFFE2E2E2);
  static const Color colorTextWhite = Color(0xFFFFFFFF);
  static const Color colorTextBlack = Color(0xFF000000);
  static const Color colorStatusBar = Color(0xFFD9D9D9);
  static const Color colorBackgroundSale = Color(0xFFBC1414);
  static const Color colorWhite = Colors.white;
  static const Color colorBlack = Colors.black;
  static const Color colorBackgroundBadge = Colors.red;
  static const Color colorHintText = Colors.grey;
  static const Color colorErrorText = Colors.red;
  static final Color colorBackgroundLoading =
      const Color(0xFF151515).withOpacity(0.3);
  static const Color colorPolicy = Colors.blueAccent;

  // COLOR BUTTON
  static const Color bgButtonFill = Color(0xFF161616);
  static const Color bgButtonFillDisable = Color.fromARGB(255, 144, 133, 133);
  static const Color textColorButton = Color.fromARGB(255, 239, 235, 235);
  static const Color textColorButtonDisable = Color(0xFF545454);
  static const Color colorShadowBox = Color.fromARGB(255, 169, 161, 168);
  static const Color bgButtonOutline = Colors.transparent;
  static const Color bgButtonOutlineDisable =
      Color.fromARGB(255, 144, 133, 133);
  static const Color textColorButtonOutline = Color(0xFF161616);
  static const Color textColorButtonOutlineDisable = Color(0xFF545454);
  static const Color borderButtonOutline = Color(0xFF161616);
  static const Color borderButtonOutlineDisable = Color(0xFF545454);
}
