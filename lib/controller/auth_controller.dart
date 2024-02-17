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
        );
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar(
          'Error',
          'Email id already in use!',
          duration: const Duration(seconds: 2),
        );
      } else if (e.code == 'invalid-email') {
        Get.snackbar(
          'Error',
          'Please Enter valid Email!',
          duration: const Duration(seconds: 2),
        );
      }
    } catch (e) {
      //print('Unexpected error: $e');
      Get.snackbar(
        'Error',
        'An unexpected error occurred. Please try again later.',
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
      );
      email.clear();
      password.clear();
      Get.offAll(const HomePage());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar(
          'Error',
          'No user found for that email.',
        );
      } else if (e.code == 'wrong-password') {
        Get.snackbar(
          'Error',
          'Wrong password provided for that user.',
        );
      } else if (e.code == 'invalid-email') {
        Get.snackbar(
          'Error',
          'Please Enter valid Email!',
          duration: const Duration(seconds: 2),
        );
      }
    } catch (e) {
      //print('Unexpected error: $e');
      Get.snackbar(
        'Error',
        'An unexpected error occurred. Please try again later.',
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
      //print('Unexpected error: $e');
      Get.snackbar(
        'Error',
        'An unexpected error occurred. Please try again later.',
      );
    }
  }
}
