import 'package:flutter/material.dart';
import 'package:ktv/constants/constants.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({super.key});

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
                children: const [
                  // icon
                  Image(
                    image: AssetImage('assets/images/icon/facebook.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Login with Facebook',
                    style: TextStyle(
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
                children: const [
                  Image(
                    image: AssetImage('assets/images/icon/google.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Login with Google',
                    style: TextStyle(
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
                children: const [
                  Image(
                    image: AssetImage('assets/images/icon/apple.png'),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Login with Apple',
                    style: TextStyle(
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
