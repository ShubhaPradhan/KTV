import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      leadingWidth: 0,
      automaticallyImplyLeading: false,
      elevation: 0,
      actionsIconTheme: const IconThemeData(
        color: Colors.black,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.transparent,
      toolbarHeight: 80,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentTitle == 'Home'
              ? Image.asset(
                  'assets/images/logo/logo-home.png',
                  height: 40,
                  fit: BoxFit.cover,
                )
              : Text(
                  currentTitle,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
          Row(
            children: [
              Image.asset(
                "assets/images/icon/search-home.png",
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/user-notification');
                },
                child: Image.asset(
                  "assets/images/user.png",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
