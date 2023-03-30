import 'package:flutter/material.dart';
import 'package:ktv/constants/constants.dart';

class LiveEvent extends StatelessWidget {
  const LiveEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Live Now",
          style: TextStyle(
            color: AppColors.gray40,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // stack widget with image, overlay and text
        GestureDetector(
          onTap: () {},
          child: Stack(
            children: [
              // image
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/live1.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // overlay
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(26, 26, 26, 0.75),
                ),
              ),
              // text
              Positioned(
                width: MediaQuery.of(context).size.width * 0.88,
                bottom: 12,
                left: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        bottom: 2,
                      ),
                      decoration: const BoxDecoration(
                        color: AppColors.red,
                      ),
                      child: const Text(
                        "LIVE",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/icon/volume.png",
                          height: 20,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Image.asset(
                          "assets/images/icon/full-screen.png",
                          height: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Barcelona vs Juventus",
          style: TextStyle(
            color: AppColors.gray40,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          "Champions League",
          style: TextStyle(
            color: AppColors.gray40,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
