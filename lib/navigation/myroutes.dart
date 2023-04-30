import 'package:flutter/material.dart';

Route slideAnimation(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: animation.drive(
            Tween(begin: const Offset(0.0, 1.0), end: Offset.zero)
                .chain(CurveTween(curve: Curves.fastOutSlowIn))),
        child: child,
      );
    },
  );
}

void pushPage(BuildContext context, Widget page) {
  Navigator.push(context, slideAnimation(page));
}
