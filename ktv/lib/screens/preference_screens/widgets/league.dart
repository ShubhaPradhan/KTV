import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

// ignore: must_be_immutable
class League extends StatelessWidget {
  League({
    super.key,
  });

  var isChecked = false.obs;

  void toggleChecked() {
    isChecked.value = !isChecked.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggleChecked();
      },
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.gray40,
                child: Image.asset(
                  'assets/images/logo/laliga.png',
                  height: 35,
                  width: 35,
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Obx(
                  () => Visibility(
                    visible: isChecked.value,
                    child: Center(
                      child: Container(
                        // take full size of parent
                        height: 58,
                        width: 58,
                        decoration: const BoxDecoration(
                          // see through box
                          color: Color.fromARGB(178, 241, 241, 241),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/icon/checked.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Laliga',
            style: TextStyle(
              fontSize: 12,
              color: AppColors.gray40,
            ),
          ),
        ],
      ),
    );
  }
}
