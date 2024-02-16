// ignore_for_file: prefer_const_constructors

import 'package:apnanotes/config/my_colors.dart';
import 'package:apnanotes/pages/sign_in.dart';
import 'package:apnanotes/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: 350,
              padding: const EdgeInsets.all(10),
              child: Lottie.network(
                'https://lottie.host/99c4314a-d780-49ef-99ca-3c01367b9674/M6vMz80io7.json',
                fit: BoxFit.fill,
              ),
            ),
            const Text(
              "Apna Notes",
              style: TextStyle(
                color: secondColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                wordSpacing: 1,
                height: 2,
              ),
            ),
            const Text(
              "A Best Place For Your Notes",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                wordSpacing: 1,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your all notes will be 100% safe in our storage.\n Feel free to save all yout secrets here.\n This app is created by @okay_anshu",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.4,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //sign in container
            InkWell(
              onTap: () {
                Get.offAll(SignInPage());
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 10,
                decoration: const BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: 25,
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
                const Text("Dont have a account ? "),
                InkWell(
                  onTap: () {
                    Get.to(SignUpPage());
                  },
                  child: const Text(
                    "Register Here",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
