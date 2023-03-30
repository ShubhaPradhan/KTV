import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class Option extends StatelessWidget {
  final String title;
  final String icon;
  final String url;

  const Option({
    super.key,
    required this.title,
    required this.icon,
    required this.url,
  });

  void showAlertDialog() {
    Get.dialog(
      AlertDialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: AppColors.gray700,
        title: const Center(
          heightFactor: 0.5,
          child: Text(
            'KTV  LIVE  SPORTS',
            style: TextStyle(
              color: AppColors.gray40,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        content: SizedBox(
          width: Get.width * 0.822,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Divider(
                height: 1,
                thickness: 2,
                color: AppColors.gray600,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Are you sure you want to logout?',
                style: TextStyle(
                  color: AppColors.gray40,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        actionsPadding: const EdgeInsets.all(0),
        actions: [
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
              ),
              fixedSize: MaterialStateProperty.all(
                const Size(
                  0,
                  0,
                ),
              ),
            ),
            onPressed: () {
              Get.back();
            },
            child: const Text(
              'NO',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 0,
                ),
              ),
              fixedSize: MaterialStateProperty.all(
                const Size(
                  0,
                  0,
                ),
              ),
            ),
            onPressed: () {
              Get.offAllNamed(
                '/login',
              );
            },
            child: const Text(
              'YES',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showSheet() {
    Get.bottomSheet(
      Container(
        height: Get.height * 0.37,
        width: Get.width,
        decoration: const BoxDecoration(
          color: AppColors.gray700,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppPadding.standardHorizontalPadding,
              ),
              child: Text(
                'Contact Us',
                style: TextStyle(
                  color: AppColors.gray40,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              height: 1,
              thickness: 2,
              color: AppColors.gray600,
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.standardHorizontalPadding,
              ),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon/phone.png',
                          width: 20,
                          height: 20,
                          color: AppColors.gray40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Support Number',
                              style: TextStyle(
                                color: AppColors.gray40,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '01-4725569, 01-4725568 ',
                              style: TextStyle(
                                color: AppColors.gray40,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon/mail.png',
                          width: 20,
                          height: 20,
                          color: AppColors.gray40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'E-mail Address',
                              style: TextStyle(
                                color: AppColors.gray40,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'info@ktvlive.com.np',
                              style: TextStyle(
                                color: AppColors.gray40,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon/viber.png',
                          width: 20,
                          height: 20,
                          color: AppColors.gray40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Viber Number',
                              style: TextStyle(
                                color: AppColors.gray40,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '+977-9815503368',
                              style: TextStyle(
                                color: AppColors.gray40,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 0,
          ),
        ),
      ),
      onPressed: () {
        url == '/logout'
            ? showAlertDialog()
            : url == "/contact"
                ? showSheet()
                : Get.toNamed(
                    url,
                  );
      },
      child: Row(
        children: [
          Image.asset(
            icon,
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.gray40,
            ),
          ),
        ],
      ),
    );
  }
}
