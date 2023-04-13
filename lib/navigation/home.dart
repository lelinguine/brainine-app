import 'package:flutter/material.dart';

import '../widgets/game.dart';
import '../widgets/stat.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key, required this.path, required this.app});

  final String path;
  final String app;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Daily 0/5",
              style: theme.textTheme.titleMedium,
            ),
            Text(
              app,
              style: theme.textTheme.titleLarge,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     MyStat(
            //       slot: '${path}graph.png',
            //     ),
            //     const SizedBox(width: 14),
            //     MyStat(
            //       slot: '${path}trophy.png',
            //     ),
            //   ],
            // ),
            const SizedBox(height: 30),
            MyGame(
              title: "Sprinter",
              score: "22",
              slot1: '${path}run.png',
              slot2: '${path}chrono.png',
            ),
            MyGame(
              title: "Master",
              score: "12",
              slot1: '${path}crown.png',
              slot2: '${path}star.png',
            ),
            MyGame(
              title: "Survival",
              score: "19",
              slot1: '${path}skull.png',
              slot2: '${path}heart.png',
            )
          ],
        ),
      ),
    );
  }
}
