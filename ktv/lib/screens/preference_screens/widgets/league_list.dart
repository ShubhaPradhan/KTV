import 'package:flutter/material.dart';
import 'package:ktv/screens/preference_screens/widgets/league.dart';

// ignore: must_be_immutable
class LeagueList extends StatelessWidget {
  const LeagueList({super.key});

  final itemLenth = 8;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: // use itemLenth to calculate height
          (itemLenth / 4).ceil() * 100.0 + (itemLenth / 4).ceil() * 24.0 - 10,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 4,
        ),
        child: GridView.builder(
          itemCount: 8,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 24,
          ),
          itemBuilder: (context, index) => League(index: index),
        ),
      ),
    );
  }
}
