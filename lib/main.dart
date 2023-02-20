import 'package:flutter/material.dart';

//import 'package:google_fonts/google_fonts.dart';

import 'sandbox/sandbox.dart';
import 'navigation/home.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Brainine",
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "Poppins",
      ),
      home: MySandBox(),
    );
  }
}
