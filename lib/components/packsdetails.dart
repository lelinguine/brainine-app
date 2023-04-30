import 'package:flutter/material.dart';

import '../context.dart';

class PacksDetails extends StatelessWidget {
  const PacksDetails(
      {super.key,
      required this.title,
      required this.score,
      required this.slot1,
      required this.slot2});

  final String title, score, slot1, slot2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 70,
        width: 290,
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 5,
              child: Row(
                children: [
                  Image.asset(
                    context.getAssets() + slot1,
                    height: 20,
                  ),
                  const SizedBox(width: 2),
                  Image.asset(
                    context.getAssets() + slot2,
                    height: 20,
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title, style: Theme.of(context).textTheme.titleMedium),
                  Text("${score}pts",
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ));
  }
}
