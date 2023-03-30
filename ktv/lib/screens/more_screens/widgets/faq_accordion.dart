import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class FaqAccordion extends StatelessWidget {
  final String title;
  final String content;
  FaqAccordion({
    super.key,
    required this.title,
    required this.content,
  });
  final _showContent = false.obs;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.gray800,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      margin: EdgeInsets.zero,
      child: Obx(
        () => Column(
          children: [
            // The title
            ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.gray40,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      elevation: 0,
                      minimumSize: const Size(15, 25),
                    ),
                    child: _showContent.value
                        ? Image.asset(
                            'assets/images/icon/up-arrow.png',
                            height: 25,
                            width: 15,
                          )
                        : Image.asset(
                            'assets/images/icon/down-arrow.png',
                            height: 25,
                            width: 15,
                          ),
                    onPressed: () {
                      _showContent.value = !_showContent.value;
                    },
                  ),
                ],
              ),
            ),
            // Show or hide the content based on the state
            _showContent.value
                ? Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    child: Text(
                      content,
                      style: const TextStyle(
                        color: AppColors.gray40,
                        fontSize: 14,
                        height: 1.75,
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
