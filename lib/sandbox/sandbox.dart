import 'package:flutter/material.dart';

import 'select.dart';

class MySandBox extends StatelessWidget {
  const MySandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MySelect(
              title: "Survival",
              score: "19",
            ),
            MySelect(
              title: "Master",
              score: "12",
            )
          ],
        ),
      ),
    );
  }
}
