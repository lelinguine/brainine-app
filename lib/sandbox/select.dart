import 'package:flutter/material.dart';

class MySelect extends StatelessWidget {
  const MySelect({super.key, required this.title, required this.score});

  final String title;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      height: 100,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 3,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("$title's Path",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Text(
            "${score}pts",
            style: TextStyle(
                color: Colors.blueGrey.withOpacity(0.8), fontSize: 16),
          )
        ]),
      ),
    );
  }
}
