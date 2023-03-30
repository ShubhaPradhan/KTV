import 'package:flutter/material.dart';
import 'package:ktv/constants/constants.dart';

class SocialLogins extends StatelessWidget {
  final String isLogin;
  const SocialLogins({
    super.key,
    required this.isLogin,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: AppColors.primaryColor,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // icon
                  const Image(
                    image: AssetImage('assets/images/icon/facebook.png'),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '$isLogin with Facebook',
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: AppColors.primaryColor,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/icon/google.png'),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '$isLogin with Google',
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: AppColors.primaryColor,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/icon/apple.png'),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '$isLogin with Apple',
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
