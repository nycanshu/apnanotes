import 'package:apnanotes/pages/home_page.dart';
import 'package:apnanotes/pages/sign_in.dart';
import 'package:apnanotes/pages/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

//code for new user signup
  void signupUser() async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      Get.snackbar(
        'Success',
        'Account Created Successfully',
        duration: const Duration(seconds: 2),
      );
      name.clear();
      email.clear();
      password.clear();
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

//code for login users
  void loginUser() async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      Get.snackbar(
        'Success',
        'Login Sucessfully',
        duration: const Duration(seconds: 2),
      );
      email.clear();
      password.clear();
      Get.offAll(const HomePage());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar(
          'Error',
          'No user found for that email.',
          duration: const Duration(seconds: 2),
        );
      } else if (e.code == 'wrong-password') {
        Get.snackbar(
          'Error',
          'Wrong password provided for that user.',
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

  //code fot logouy
  void logoutUser() async {
    try {
      await auth.signOut();
      Get.snackbar(
        'Sucess',
        'Log Out Sucessfully',
      );
      Get.offAll(const WelcomePage());
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
