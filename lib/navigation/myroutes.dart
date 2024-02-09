import 'package:brainine/navigation/pages/mypacks.dart';
import 'package:flutter/material.dart';

import 'package:brainine/navigation/pages/myrules.dart';

Route slideAnimation(Widget page, Offset offset) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: animation.drive(Tween(begin: offset, end: Offset.zero)
            .chain(CurveTween(curve: Curves.fastOutSlowIn))),
        child: child,
      );
    },
  );
}

void pushRule(BuildContext context) {
  Navigator.push(
      context, slideAnimation(const MyRules(), const Offset(1.0, 0.0)));
}

void pushPacks(BuildContext context) {
  Navigator.push(
      context, slideAnimation(const MyPacks(), const Offset(1.0, 0.0)));
}

void pushOptions(BuildContext context, Widget page) {
  Navigator.push(context, slideAnimation(page, const Offset(1.0, 0.0)));
}
