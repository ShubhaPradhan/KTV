import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/auth_screens/login_screen.dart';
import 'screens/auth_screens/signup_screen.dart';
import 'screens/home_screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ktv Live Sports',
      defaultTransition: Transition.leftToRight,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login",
      getPages: [
        GetPage(
          name: "/login",
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: "/signup",
          page: () => const SignupScreen(),
        ),
        GetPage(
          name: "/home",
          page: () => const HomeScreen(),
        ),
      ],
    );
  }
}
