import 'package:apnanotes/pages/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void signup() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      Get.snackbar(
        'Success',
        'Account Created Successfully',
        duration: const Duration(seconds: 2),
      );

      Get.offAll(const SignInPage());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar(
          'Error',
          'The password provided is too weak.',
          duration: const Duration(seconds: 2),
        );
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar(
          'Error',
          'Email id already in use!',
          duration: const Duration(seconds: 2),
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        duration: const Duration(seconds: 2),
      );
    }
  }

  void loginuser() async {}
}
