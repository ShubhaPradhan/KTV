import 'package:flutter/material.dart';
import 'package:ktv/screens/preference_screens/widgets/league.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  final itemLenth = 8;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: // use itemLenth to calculate height
          (itemLenth / 4).ceil() * 100.0 + (itemLenth / 4).ceil() * 24.0 - 10,
      child: GridView.builder(
          itemCount: 8,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 24,
          ),
          itemBuilder: (context, index) {
            return League();
          }),
    );
  }
}
