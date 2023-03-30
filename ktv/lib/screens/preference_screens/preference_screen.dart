import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ktv/constants/constants.dart';
import 'package:ktv/screens/preference_screens/widgets/accordion.dart';
import 'package:ktv/screens/preference_screens/widgets/search_list.dart';

class PreferenceScreen extends StatelessWidget {
  PreferenceScreen({super.key});

  final _searchList = false.obs;

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
                Center(
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/logo/logo.png',
                      height: 50,
                      width: 110,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    'Set Preferences',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gray40,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'This helps us recommend content that you may like',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.gray40,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // search bar with icon on right and hint text
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    // onChanged call a widget
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        _searchList.value = true;
                      } else {
                        _searchList.value = false;
                      }
                    },
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.gray400,
                      decoration: TextDecoration.none,
                      decorationThickness: 0,
                    ),
                    decoration: const InputDecoration(
                      // remove padding for error text
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.gray700,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 6,
                      ),
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: AppColors.gray400,
                      ),
                      filled: true,
                      fillColor: AppColors.gray700,
                      suffixIcon: ImageIcon(
                        AssetImage('assets/images/icon/search.png'),
                        color: AppColors.gray40,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // ListView buuilder for accordion
                Obx(
                  () => _searchList.value
                      ? const SearchList()
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                              ),
                              child: Accordion(
                                title: 'Title $index',
                                content: 'Content $index',
                              ),
                            );
                          },
                        ),
                ),
                const SizedBox(height: 30),
                // elevated button
                Center(
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed("/home");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        'Done',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                        ),
                      ),
                    ),
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
