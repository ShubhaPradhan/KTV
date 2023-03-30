import 'package:flutter/material.dart';
import 'package:ktv/screens/discover_screens/discover_screen.dart';
import 'package:ktv/screens/more_screens/more_screen.dart';
import '../../../constants/constants.dart';
import '../screens/events_screens/event_screen.dart';
import '../screens/home_screens/home_screen.dart';
import 'custome_page_route.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<int> selectedButton = [1, 0, 0, 0];

  final List<String> tabName = [
    'Home',
    'Discover',
    'Events',
    'Menu',
  ];

  final List iconName = [
    "assets/images/icon/home.png",
    "assets/images/icon/discover.png",
    "assets/images/icon/events.png",
    "assets/images/icon/menu.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.gray700,
      child: Row(
        children: [
          bottomCategory(
            0,
            const HomeScreen(),
            'Home',
          ),
          bottomCategory(
            1,
            const DiscoverScreen(),
            'Discover',
          ),
          bottomCategory(
            2,
            const EventsScreen(),
            'Saved Events',
          ),
          bottomCategory(
            3,
            const MoreScreen(),
            'Settings',
          ),
        ],
      ),
    );
  }

  bottomCategory(var tabNumber, Widget screen, String appBarTitle) {
    return GestureDetector(
      onTap: () {
        setState(() {
          // navigate to the screen
          Navigator.of(context).pushReplacement(CustomPageRoute(child: screen));
          currentScreen = screen;
          currentTab = tabNumber;
          currentTitle = appBarTitle;
        });
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 4,
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconName[tabNumber],
              color: currentTab == tabNumber ? Colors.white : AppColors.gray400,
              width: 20,
              height: 20,
            ),
            Text(
              tabName[tabNumber],
              textScaleFactor: 0.8,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color:
                    currentTab == tabNumber ? Colors.white : AppColors.gray400,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
