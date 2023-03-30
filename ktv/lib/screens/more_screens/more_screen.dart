import 'package:flutter/material.dart';
import 'package:ktv/screens/more_screens/widgets/favourites.dart';
import 'package:ktv/screens/more_screens/widgets/option.dart';

import '../../constants/constants.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/custom_app_bar.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.standardHorizontalPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 14),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        'assets/images/user.png',
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Joseph Bruce Willlis',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.gray40,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'josephbruce321@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.gray40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Favorites',
                  style: TextStyle(
                    color: AppColors.gray40,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 70,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return index == 0
                                ? GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 16),
                                      child: CircleAvatar(
                                        radius: 35,
                                        backgroundColor: AppColors.gray40,
                                        child: Image.asset(
                                          'assets/images/icon/plus.png',
                                          height: 35,
                                          width: 35,
                                        ),
                                      ),
                                    ),
                                  )
                                : const Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: Favourite(),
                                  );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Account',
                  style: TextStyle(
                    color: AppColors.gray40,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                const Option(
                  title: 'Profile Settings',
                  icon: 'assets/images/icon/profile.png',
                  url: '/profile',
                ),
                const Option(
                  title: 'Subscription',
                  icon: 'assets/images/icon/subscription.png',
                  url: '/subscription',
                ),
                const Option(
                  title: 'Security',
                  icon: 'assets/images/icon/security.png',
                  url: '/security',
                ),
                const SizedBox(height: 14),
                const Text(
                  'Support',
                  style: TextStyle(
                    color: AppColors.gray40,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                const Option(
                  title: "FAQ's",
                  icon: 'assets/images/icon/faq.png',
                  url: '/faq',
                ),
                const Option(
                  title: 'Contact Us',
                  icon: 'assets/images/icon/contact.png',
                  url: '/contact',
                ),
                const Option(
                  title: 'About Us',
                  icon: 'assets/images/icon/about.png',
                  url: '/about',
                ),
                const SizedBox(height: 14),
                const Text(
                  'More',
                  style: TextStyle(
                    color: AppColors.gray40,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                const Option(
                  title: 'Rate Us',
                  icon: 'assets/images/icon/rate.png',
                  url: '/rate',
                ),
                const Option(
                  title: 'Share our App',
                  icon: 'assets/images/icon/share.png',
                  url: '/share',
                ),
                const Option(
                  title: 'Logout',
                  icon: 'assets/images/icon/logout.png',
                  url: '/logout',
                ),
                const SizedBox(height: 14),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
