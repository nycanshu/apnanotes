import 'package:apnanotes/config/my_colors.dart';
import 'package:apnanotes/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Lottie.network(
          'https://lottie.host/f9bc512f-a4d0-4734-a5ba-0f1b327d1c01/mxjP1Ov6xp.json',
          width: 200,
        ),
      ),
    );
  }
}
