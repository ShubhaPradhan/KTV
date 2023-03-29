import 'package:flutter/material.dart';
import 'package:ktv/constants/constants.dart';

import 'league_list.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  const Accordion({Key? key, required this.title, required this.content})
      : super(key: key);
  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  // Show or hide the content
  bool _showContent = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.gray800,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      margin: EdgeInsets.zero,
      child: Column(children: [
        // The title
        ListTile(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/icon/football.png',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 14),
              Text(
                widget.title,
                style: const TextStyle(
                  color: AppColors.gray40,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  minimumSize: const Size(15, 25),
                ),
                child: const Text(
                  'Select all',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  elevation: 0,
                  minimumSize: const Size(15, 25),
                ),
                child: _showContent
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
                  setState(() {
                    _showContent = !_showContent;
                  });
                },
              ),
            ],
          ),
        ),
        // Show or hide the content based on the state
        _showContent ? const LeagueList() : Container()
      ]),
    );
  }
}
