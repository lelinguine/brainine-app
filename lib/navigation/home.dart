import 'package:flutter/material.dart';

import '../context.dart';
import '../components/game.dart';
import '../components/stat.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "Daily 0/5",
            //   style: Theme.of(context).textTheme.titleMedium,
            // ),
            Text(
              context.customTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     MyStat(
            //       slot: '${context.getAssets()}graph.png',
            //     ),
            //     const SizedBox(width: 12),
            //     MyStat(
            //       slot: '${context.getAssets()}trophy.png',
            //     ),
            //   ],
            // ),
            const SizedBox(height: 20),
            const MyGame(),
          ],
        ),
      ),
    );
  }
}
