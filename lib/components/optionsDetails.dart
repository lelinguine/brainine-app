import 'package:flutter/material.dart';

import '../context.dart';

class OptionsDetails extends StatelessWidget {
  const OptionsDetails({super.key, required this.slot});

  final String slot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 32,
        width: 32,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                context.getAssets() + slot,
                height: 20,
              ),
            ],
          ),
        ));
  }
}
