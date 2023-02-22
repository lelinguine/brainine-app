import 'package:flutter/material.dart';

import '../navigation/rules.dart';

class MyGame extends StatefulWidget {
  const MyGame(
      {super.key,
      required this.title,
      required this.score,
      required this.slot1,
      required this.slot2});

  final String title;
  final String score;
  final String slot1;
  final String slot2;

  @override
  // ignore_for_file: no_logic_in_create_state
  State<StatefulWidget> createState() =>
      MyGameState(score: score, slot1: slot1, slot2: slot2, title: title);
}

class MyGameState extends State<StatefulWidget> {
  MyGameState(
      {required this.title,
      required this.score,
      required this.slot1,
      required this.slot2});

  final String title;
  final String score;
  final String slot1;
  final String slot2;

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
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            height: 90,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 3,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
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
                        slot1,
                        height: 20,
                      ),
                      const SizedBox(width: 2),
                      Image.asset(
                        slot2,
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 80,
                  child: Column(
                    children: [
                      Text("$title's Path",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text(
                        "${score}pts",
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.8), fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
