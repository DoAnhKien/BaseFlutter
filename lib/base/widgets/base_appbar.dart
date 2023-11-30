import 'package:app/themes/themes_provider.dart';
import 'package:app/utils/icon_circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BaseAppBar extends AppBar {
  BaseAppBar(
      {Key? key,
      required String title,
      Widget? widgetRight,
      bool isShowBackButton = true,
      required VoidCallback onBackPress})
      : super(
          key: key,
          elevation: 0,
          backgroundColor: ThemeProvider.colorPrimary,
          leading: isShowBackButton
              ? GestureDetector(
                  onTap: () {
                    onBackPress.call();
                  },
                  child: IconCircleWidget(
                    padding: EdgeInsets.only(left: 8.w),
                    child: const Icon(Icons.arrow_back_ios,
                        color: Colors.white, size: 22),
                  ).marginAll(8),
                )
              : Container(),
          actions: [
            (widgetRight ?? const SizedBox()).marginOnly(right: 12, top: 8)
          ],
          title: Text(
            title,
            style: TextStyle(
                fontFamily: ThemeProvider.fontBold,
                color: ThemeProvider.colorTextWhite,
                fontSize: ThemeProvider.fontSize20),
          ),
        );
}
