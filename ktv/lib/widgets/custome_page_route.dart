import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;

  CustomPageRoute({
    required this.child,
  }) : super(
          // transitionDuration: Duration(seconds: 5),
          pageBuilder: (context, animation, secondaryAnimation) => child,
        );

  Widget buildTransition(BuildContext buildContext, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-2, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
}
