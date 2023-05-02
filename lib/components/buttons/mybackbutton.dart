import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../context.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (TapUpDetails tapUpDetails) {
        Navigator.pop(context);
      },
      child: Row(
        children: [
          Image.asset(
            "${context.getAssets()}more.png",
            height: 20,
          ),
          const SizedBox(width: 5),
          Text("Home", style: Theme.of(context).textTheme.bodyMedium)
        ],
      ),
    );
  }
}
