import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktv/constants/constants.dart';
import 'package:ktv/widgets/bottom_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                      'Profile Settings',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 34),
                const Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/user.png',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Full Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray40,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  color: AppColors.gray700,
                  height: 40,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: const Text(
                    'Joseph Bruce Willlis',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray40,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray40,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  color: AppColors.gray700,
                  height: 40,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: const Text(
                    'josephbruce321@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray40,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray40,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  color: AppColors.gray700,
                  height: 40,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: const Text(
                    '+977-9840068596',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray40,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.gray40,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  color: AppColors.gray700,
                  height: 40,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: const Text(
                    'Male',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.gray40,
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
                    onPressed: () {
                      Get.toNamed('/edit-profile');
                    },
                    child: const Text(
                      'Edit',
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
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
