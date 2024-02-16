import 'package:apnanotes/config/my_colors.dart';
import 'package:apnanotes/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor.withOpacity(0.5),
        title: const Text(
          'Register Yourself',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
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
              const Text('Kindly Fill the required fields ❤️'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Name',
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
                  controller: authController.name,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: 'Enter Full Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
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
                height: 10,
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
                  controller: authController.password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: InputBorder.none,
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  authController.signupUser();
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Create My Account",
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text(
                      " Log In",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ), //Text
            ],
          ),
        ),
      ),
    );
  }
}
