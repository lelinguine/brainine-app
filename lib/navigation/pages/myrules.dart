import 'package:brainine/components/buttons/mybutton.dart';
import 'package:flutter/material.dart';

import '../../context.dart';
import '../../components/buttons/mybackbutton.dart';
import '../../components/buttons/myactionbutton.dart';
import "../../navigation/myroutes.dart";

class MyRules extends StatelessWidget {
  const MyRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  const MyBackButton(),
                  const SizedBox(height: 20),
                  Text("Rules", style: Theme.of(context).textTheme.bodyMedium),
                  Text("Sprinter's Path",
                      style: Theme.of(context).textTheme.titleMedium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "${context.getAssets()}skull.png",
                        height: 20,
                      ),
                      const SizedBox(width: 2),
                      Image.asset(
                        "${context.getAssets()}heart.png",
                        height: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 300,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam molestie sodales nulla, ac laoreet risus aliquam nec. Etiam sollicitudin, ante tincidunt congue luctus, erat nisi tempor ex, nec lobortis tortor nisl sed purus. Donec fermentum enim elit, non elementum quam efficitur eu.",
                                style: Theme.of(context).textTheme.bodyMedium)
                          ],
                        ),
                      )),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    MyButton(
                        child: const SizedBox(
                          height: 30,
                          width: 50,
                          child: MyActionButton(),
                        ),
                        action: () => pushPacks(context))
                  ]),
                  const SizedBox(height: 200),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
