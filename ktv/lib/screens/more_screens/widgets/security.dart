import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../../widgets/bottom_bar.dart';

// ignore: must_be_immutable
class Security extends StatelessWidget {
  Security({super.key});

  // hide password for 3 text fields
  // ignore: prefer_final_fields
  final _hidePasswordOld = true.obs;
  final _hidePasswordNew = true.obs;
  final _hidePasswordConfirm = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.standardHorizontalPadding,
              vertical: AppPadding.standardVerticalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        'assets/images/icon/back-arrow.png',
                        height: 20,
                        width: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Security Settings',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 34),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Old Password',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        child: Obx(
                          () => TextFormField(
                            obscureText: _hidePasswordOld.value,
                            decoration: InputDecoration(
                              // remove padding for error text
                              contentPadding: const EdgeInsets.only(
                                top: 6,
                              ),
                              suffixIcon: IconButton(
                                icon: _hidePasswordOld.value
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: AppColors.gray40,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: AppColors.gray40,
                                      ),
                                onPressed: () {
                                  _hidePasswordOld.value =
                                      !_hidePasswordOld.value;
                                },
                              ),
                              filled: true,
                              fillColor: AppColors.gray700,
                              focusedErrorBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefix: const Padding(
                                padding: EdgeInsets.only(
                                  left: 20.0,
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray40,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'New Password',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        child: Obx(
                          () => TextFormField(
                            obscureText: _hidePasswordNew.value,
                            decoration: InputDecoration(
                              // remove padding for error text
                              contentPadding: const EdgeInsets.only(
                                top: 6,
                              ),
                              suffixIcon: IconButton(
                                icon: _hidePasswordNew.value
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: AppColors.gray40,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: AppColors.gray40,
                                      ),
                                onPressed: () {
                                  _hidePasswordNew.value =
                                      !_hidePasswordNew.value;
                                },
                              ),
                              filled: true,
                              fillColor: AppColors.gray700,
                              focusedErrorBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefix: const Padding(
                                padding: EdgeInsets.only(
                                  left: 20.0,
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray40,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Confirm New Password',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        child: Obx(
                          () => TextFormField(
                            obscureText: _hidePasswordConfirm.value,
                            decoration: InputDecoration(
                              // remove padding for error text
                              contentPadding: const EdgeInsets.only(
                                top: 6,
                              ),
                              suffixIcon: IconButton(
                                icon: _hidePasswordConfirm.value
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: AppColors.gray40,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: AppColors.gray40,
                                      ),
                                onPressed: () {
                                  _hidePasswordConfirm.value =
                                      !_hidePasswordConfirm.value;
                                },
                              ),
                              filled: true,
                              fillColor: AppColors.gray700,
                              focusedErrorBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefix: const Padding(
                                padding: EdgeInsets.only(
                                  left: 20.0,
                                ),
                              ),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.gray40,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // outline button with edit text
                      Align(
                        alignment: Alignment.topRight,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: AppColors.primaryColor,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            elevation: 0,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
