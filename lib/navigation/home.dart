import 'package:flutter/material.dart';

import '../widgets/game.dart';
import '../widgets/stat.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    //const à retirer pour le build iOS
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Brainine",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyStat(
                  slot: 'lib/assets/light/graph.png',
                ),
                SizedBox(width: 14),
                MyStat(
                  slot: 'lib/assets/light/trophy.png',
                ),
              ],
            ),
            SizedBox(height: 20),
            MyGame(
              title: "Survival",
              score: "19",
              slot1: 'lib/assets/light/skull.png',
              slot2: 'lib/assets/light/heart.png',
            ),
            MyGame(
              title: "Master",
              score: "12",
              slot1: 'lib/assets/light/crown.png',
              slot2: 'lib/assets/light/star.png',
            )
          ],
        ),
      ),
    );
  }
}
