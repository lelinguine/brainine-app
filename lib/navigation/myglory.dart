import 'package:flutter/material.dart';

class MyGlory extends StatelessWidget {
  const MyGlory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: const Text('Glory'),
        onPressed: () {
          Navigator.pop(
            context,
          );
        },
      ),
    ));
  }
}
