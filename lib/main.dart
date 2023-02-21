import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // final TextTheme textTheme = const TextTheme(
  //   titleLarge: TextStyle(
  //       fontSize: 72.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
  //   titleMedium: TextStyle(
  //       fontSize: 36.0, fontStyle: FontStyle.italic, fontFamily: 'Poppins'),
  //   bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
  // );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Brainine",
      theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: GoogleFonts.poppins().fontFamily
          //textTheme: textTheme,
          ),
      home: const MyHome(),
    );
  }
}
