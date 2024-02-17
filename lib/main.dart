import 'package:apnanotes/config/my_theme.dart';
import 'package:apnanotes/pages/home_page.dart';
//import 'package:apnanotes/pages/splash_page.dart';
import 'package:apnanotes/pages/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var auth = FirebaseAuth.instance;
  var isLogin = false;

  @override
  void initState() {
    super.initState();
    checkIfLogin();
  }

  checkIfLogin() async {
    auth.authStateChanges().listen((User? user) {
      if (user != null && mounted) {
        setState(() {
          isLogin = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Your Diary',
      theme: lightTheme,
      home: isLogin ? const HomePage() : const WelcomePage(),
      // routes: {
      //   '/': (context) => const SplashPage(),
      //   '/homepage': (context) => const HomePage(),
      //   '/welcomepage': (context) => const WelcomePage(),
      //   '/signup': (context) => const SignUpPage(),
      // },
    );
  }
}
