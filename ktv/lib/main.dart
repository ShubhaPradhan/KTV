import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktv/screens/discover_screens/discover_screen.dart';
import 'package:ktv/screens/more_screens/more_screen.dart';
import 'package:ktv/screens/more_screens/widgets/edit_profile.dart';
import 'package:ktv/screens/more_screens/widgets/profile.dart';

import 'screens/auth_screens/auth_screen.dart';
import 'screens/events_screens/event_screen.dart';
import 'screens/home_screens/home_screen.dart';
import 'screens/more_screens/widgets/about.dart';
import 'screens/more_screens/widgets/faq.dart';
import 'screens/more_screens/widgets/security.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'RedHatDisplay',
      ),
      initialRoute: "/login",
      getPages: [
        GetPage(
          name: "/login",
          page: () => AuthScreen(),
        ),
        GetPage(
          name: "/preference",
          page: () => PreferenceScreen(),
        ),
        GetPage(
          name: "/home",
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: "/discover",
          page: () => const DiscoverScreen(),
        ),
        GetPage(
          name: "/events",
          page: () => const EventsScreen(),
        ),
        GetPage(
          name: "/more",
          page: () => const MoreScreen(),
        ),
        GetPage(
          name: "/profile",
          page: () => const Profile(),
        ),
        GetPage(
          name: "/edit-profile",
          page: () => const EditProfiel(),
        ),
        GetPage(
          name: "/about",
          page: () => const About(),
        ),
        GetPage(
          name: "/security",
          page: () => Security(),
        ),
        GetPage(
          name: "/faq",
          page: () => const Faq(),
        ),
      ],
    );
  }
}
