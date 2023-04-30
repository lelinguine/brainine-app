import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'context.dart';
import 'navigation/myhome.dart';

void main() {
  runApp(const MyMainApp());
}

class MyMainApp extends StatelessWidget {
  const MyMainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: context.customTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: context.isDark()
            ? const Color.fromARGB(255, 0, 0, 0)
            : const Color.fromARGB(255, 255, 255, 255),
        fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w600).fontFamily,
        primaryColor: context.isDark() ? Colors.black : Colors.white,
        secondaryHeaderColor: context.isDark() ? Colors.white : Colors.black,
        brightness: context.isDark() ? Brightness.dark : Brightness.light,
        textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontSize: 36.0,
              height: 1.2,
            ),
            titleMedium: TextStyle(
              fontSize: 20.0,
            ),
            bodyMedium: TextStyle(
              fontSize: 16.0,
              height: 1,
            )),
      ),
      home: const MyHome(),
    );
  }
}
