import 'package:flutter/material.dart';

class MyGame extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0),
        height: 90,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 3,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(5, 5),
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
        ));
  }
}
