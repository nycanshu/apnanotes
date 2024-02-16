import 'package:apnanotes/config/my_colors.dart';
import 'package:apnanotes/controller/auth_controller.dart';
import 'package:apnanotes/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              authController.logoutUser();
            },
            icon: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: blueColor,
        elevation: 0,
        title: const Text("Your Diary"),
        titleSpacing: 1.4,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.to(const ProfilePage());
          },
          child: const Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ),
      body: const Text("Home Page"),
    );
  }
}
