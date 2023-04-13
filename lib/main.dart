import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  //............................................................................

  final String app = 'Brainine';

  final TextTheme textTheme = const TextTheme(
      titleLarge: TextStyle(
        fontSize: 36.0,
      ),
      titleMedium: TextStyle(
        fontSize: 20.0,
      ),
      bodyMedium: TextStyle(
        fontSize: 16.0,
      ));

  //............................................................................

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = MediaQuery.of(context).platformBrightness;
    final bool isDarkMode = false; //brightness == Brightness.dark;

    return MaterialApp(
      title: app,
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w600).fontFamily,
        primaryColor: Colors.black,
        primaryColorLight: Colors.white,
        brightness: Brightness.light,
        textTheme: textTheme,
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
        fontFamily: GoogleFonts.poppins(fontWeight: FontWeight.w600).fontFamily,
        primaryColor: Colors.white,
        primaryColorLight: Colors.black,
        brightness: Brightness.dark,
        textTheme: textTheme,
      ),
      home: MyHome(
        path: isDarkMode ? 'lib/assets/dark/' : 'lib/assets/light/',
        app: app,
      ),
    );
  }
}
