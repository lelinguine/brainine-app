import 'package:flutter/material.dart';

import 'select.dart';

class MySandBox extends StatelessWidget {
  const MySandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            const MySelect(
              title: "Survival",
              score: "19",
            ),
            const MySelect(
              title: "Master",
              score: "12",
            )
          ],
        ),
      ),
    );
  }
}
