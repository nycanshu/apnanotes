import 'package:apnanotes/config/my_colors.dart';
import 'package:apnanotes/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Text(authController.name.text),
        backgroundColor: blueColor,
        centerTitle: true,
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
