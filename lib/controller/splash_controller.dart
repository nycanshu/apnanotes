// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashHandel();
  }

  void splashHandel() async {
    Future.delayed(
      Duration(seconds: 7),
      () {
        Get.offAllNamed(
          '/home',
        );
      },
    );
  }
}
