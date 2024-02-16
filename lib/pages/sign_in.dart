import 'package:apnanotes/config/my_colors.dart';
import 'package:apnanotes/controller/auth_controller.dart';
import 'package:apnanotes/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Love To Connect With You',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Please login with your credentials.',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width - 10,
                child: TextFormField(
                  controller: authController.email,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    border: InputBorder.none,
                    hintText: 'Enter Your Email Address',
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width - 10,
                child: TextFormField(
                  obscureText: true,
                  controller: authController.password,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: InputBorder.none,
                    hintText: 'Enter Your Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an Account! ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const SignUpPage());
                    },
                    child: const Text(
                      " Create New Account",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
