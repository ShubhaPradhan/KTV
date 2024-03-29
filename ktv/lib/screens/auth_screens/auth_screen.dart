import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktv/constants/constants.dart';
import 'package:ktv/screens/auth_screens/widgets/social_logins.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});

  final _isLogin = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.standardHorizontalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo/logo.png',
                      height: 140,
                      width: 140,
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    _isLogin.value ? 'Login' : 'Sign Up',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gray40,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.gray40,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            // remove padding for error text
                            contentPadding: EdgeInsets.only(
                              bottom: 8,
                            ),
                            // show suggestion
                            filled: true,
                            fillColor: AppColors.gray700,
                            focusedErrorBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            prefix: Padding(
                              padding: EdgeInsets.only(
                                left: 20.0,
                                bottom: 0,
                                top: 0,
                              ),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray40,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.gray40,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            // remove padding for error text
                            contentPadding: EdgeInsets.only(
                              bottom: 4,
                            ),
                            // show suggestion
                            filled: true,
                            fillColor: AppColors.gray700,
                            focusedErrorBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            prefix: Padding(
                              padding: EdgeInsets.only(
                                left: 20.0,
                              ),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray40,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => _isLogin.value
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot password?',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(
                          height: 16,
                        ),
                ),
                SizedBox(
                  height: 44,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/preference");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                    ),
                    child: Obx(
                      () => Text(
                        _isLogin.value ? "Login" : "Sign Up",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      _isLogin.value = !_isLogin.value;
                    },
                    child: Obx(
                      () => RichText(
                        text: TextSpan(
                          text: _isLogin.value
                              ? 'Don\'t have an account?  '
                              : 'Already have an account?  ',
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.gray40,
                          ),
                          children: [
                            TextSpan(
                              text: _isLogin.value ? 'Sign up' : 'Login',
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Obx(
                  () => SocialLogins(
                    isLogin: _isLogin.value ? "Login" : "Signup",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
