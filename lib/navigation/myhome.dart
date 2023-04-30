import 'package:flutter/material.dart';

import '../context.dart';

import '../navigation/myrules.dart';
import '../components/mybutton.dart';
import '../components/optionsdetails.dart';
import '../components/packslist.dart';

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
            const SizedBox(height: 12),
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
            const SizedBox(height: 34),
            const PacksList(),
          ],
        ),
      ),
    );
  }
}
