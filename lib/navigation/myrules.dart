import 'package:flutter/material.dart';

class MyRules extends StatelessWidget {
  const MyRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: const Text('Home'),
        onPressed: () {
          Navigator.pop(
            context,
          );
        },
      ),
    ));
  }
}
