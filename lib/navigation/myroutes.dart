import 'package:flutter/material.dart';

Route slideAnimation(Widget page, Offset offset) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: animation.drive(Tween(begin: offset, end: Offset.zero)
            .chain(CurveTween(curve: Curves.ease))),
        child: child,
      );
    },
  );
}
