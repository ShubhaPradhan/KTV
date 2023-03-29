import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/auth_screens/auth_screen.dart';
import 'screens/home_screens/home_screen.dart';
import 'screens/preference_screens/preference_screen.dart';

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
      defaultTransition: Transition.rightToLeft,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'RedHatDisplay',
      ),
      initialRoute: "/login",
      getPages: [
        GetPage(
          name: "/login",
          page: () => const AuthScreen(),
        ),
        GetPage(
          name: "/home",
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: "/preference",
          page: () => const PreferenceScreen(),
        ),
      ],
    );
  }
}
