import 'package:brainine/navigation/home.dart';
import 'package:flutter/material.dart';

class MyRules extends StatelessWidget {
  const MyRules({super.key});

  @override
  Widget build(BuildContext context) {
    //const à retirer pour le build iOS
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
          child: const Text('Back'),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const MyHome()),
            );
          },
        ),
      ),
    );
  }
}
