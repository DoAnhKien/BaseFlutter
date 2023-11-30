import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Assets.image.imageLogo
              .image(fit: BoxFit.scaleDown)
              .paddingSymmetric(horizontal: 60)),
    );
  }
}
