import 'package:flutter/material.dart';

class MyPacks extends StatelessWidget {
  const MyPacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: const Text('Packs'),
        onPressed: () {
          Navigator.pop(
            context,
          );
          Navigator.pop(
            context,
          );
        },
      ),
    ));
  }
}
