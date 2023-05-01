import 'package:flutter/material.dart';

class MyStats extends StatelessWidget {
  const MyStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: const Text('Stats'),
        onPressed: () {
          Navigator.pop(
            context,
          );
        },
      ),
    ));
  }
}
