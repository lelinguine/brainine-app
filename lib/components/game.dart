import 'package:brainine/context.dart';
import 'package:flutter/material.dart';

import '../navigation/rules.dart';

class MyGame extends StatefulWidget {
  const MyGame({super.key});

  @override
  // ignore_for_file: no_logic_in_create_state
  State<StatefulWidget> createState() => MyGameState();
}

class MyGameState extends State<StatefulWidget> {
  MyGameState();

  final String title = "Sprinter";
  final String score = "28";

  Route downslideanimation() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const MyRules(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Offset xoffset = const Offset(5, 5);

  void tapanimation() {
    setState(() {
      xoffset = const Offset(0, 0);
    });
  }

  void canceltapanimation() {
    setState(() {
      xoffset = const Offset(5, 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
        onTapUp: (TapUpDetails tapUpDetails) {
          canceltapanimation();
          Navigator.push(context, downslideanimation());
        },
        onTapCancel: () {
          canceltapanimation();
        },
        onTapDown: (TapDownDetails tapDownDetails) {
          tapanimation();
        },
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 9.0),
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              color: theme.primaryColorLight,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 4,
                color: theme.primaryColor,
              ),
              boxShadow: [
                BoxShadow(
                  color: theme.primaryColor,
                  offset: xoffset,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 6,
                  left: 6,
                  child: Row(
                    children: [
                      Image.asset(
                        '${context.getAssets()}run.png',
                        height: 20,
                      ),
                      const SizedBox(width: 2),
                      Image.asset(
                        '${context.getAssets()}chrono.png',
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$title's Path",
                          style: Theme.of(context).textTheme.titleMedium),
                      Text("${score}pts",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                ),
              ],
            )));
  }
}
