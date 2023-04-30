import 'package:brainine/navigation/myRules.dart';
import 'package:flutter/material.dart';

import '../context.dart';
import '../components/optionsdetails.dart';
import '../components/packsDetails.dart';

import '../components/mybutton.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Daily 0/5",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              context.customTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  page: MyRules(),
                  child: OptionsDetails(slot: 'graph.png'),
                ),
                SizedBox(width: 12),
                MyButton(
                  page: MyRules(),
                  child: OptionsDetails(slot: 'trophy.png'),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const MyButton(
              page: MyRules(),
              child: PacksDetails(
                title: 'Sprinter',
                score: '28',
                slot1: 'run.png',
                slot2: 'chrono.png',
              ),
            ),
            const SizedBox(height: 14),
            const MyButton(
              page: MyRules(),
              child: PacksDetails(
                title: 'Master',
                score: '79',
                slot1: 'crown.png',
                slot2: 'star.png',
              ),
            ),
            const SizedBox(height: 14),
            const MyButton(
              page: MyRules(),
              child: PacksDetails(
                title: 'Survival',
                score: '19',
                slot1: 'skull.png',
                slot2: 'heart.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
