import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';

// ignore: must_be_immutable
class EventTile extends StatelessWidget {
  EventTile({super.key});

  var isNotificationOn = false.obs;

  void toggleNotificationStatus() {
    isNotificationOn.value = !isNotificationOn.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        visualDensity: const VisualDensity(horizontal: 1, vertical: 4),
        leading: Image.asset(
          alignment: Alignment.centerLeft,
          fit: BoxFit.cover,
          "assets/images/live2.png",
          width: 94,
          height: double.infinity,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "T-20 Match",
              style: TextStyle(
                color: AppColors.gray50,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "India vs Pakistan",
              style: TextStyle(
                color: AppColors.gray50,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              width: 40,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
                bottom: 1,
              ),
              decoration: const BoxDecoration(
                color: AppColors.red,
              ),
              child: const Text(
                "Live",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // Text(
            //   "SAT, 19th Jan, 23:15",
            //   style: TextStyle(
            //     color: AppColors.gray50,
            //     fontSize: 12,
            //     fontWeight: FontWeight.w300,
            //   ),
            // ),
          ],
        ),
        trailing: GestureDetector(
          onTap: () {
            toggleNotificationStatus();
          },
          child: Obx(
            () => Container(
              color: isNotificationOn.value
                  ? AppColors.primaryColor
                  : AppColors.gray700,
              width: 34,
              height: 34,
              child: Image.asset(
                "assets/images/icon/notification.png",
                color: AppColors.gray50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
