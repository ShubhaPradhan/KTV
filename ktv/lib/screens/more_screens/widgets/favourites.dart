import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: AppColors.gray40,
      child: Image.asset(
        'assets/images/logo/laliga.png',
        height: 45,
        width: 45,
      ),
    );
  }
}
