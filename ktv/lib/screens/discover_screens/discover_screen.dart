import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/custom_app_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: Center(
        child: Text('Home'),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
