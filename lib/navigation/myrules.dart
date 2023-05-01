import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../navigation/myroutes.dart';

class MyRules extends StatelessWidget {
  const MyRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Test'),
            onPressed: () {
              HapticFeedback.vibrate();
              pushHome(context);
            },
          ),
        ],
      ),
    ));
  }
}
