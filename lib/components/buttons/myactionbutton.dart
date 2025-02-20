import 'package:flutter/material.dart';

class MyActionButton extends StatelessWidget {
  final String jsonFilePath = 'lib/packs.json';

  const MyActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 50,
      child: Center(
          child: Text("OK",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium)),
    );
  }
}
