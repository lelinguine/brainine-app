import 'package:flutter/material.dart';

import '../context.dart';
import '../components/mybutton.dart';
import '../components/optionsdetails.dart';
import '../components/packslist.dart';
import '../navigation/myroutes.dart';

import 'package:brainine/navigation/myglory.dart';
import 'package:brainine/navigation/mystats.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  action: () => pushOptions(context, const MyStats()),
                  child: const OptionsDetails(slot: 'graph.png'),
                ),
                const SizedBox(width: 12),
                MyButton(
                  action: () => pushOptions(context, const MyGlory()),
                  child: const OptionsDetails(slot: 'trophy.png'),
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
