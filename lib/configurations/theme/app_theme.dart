import 'package:flutter/material.dart';

var customTheme = ThemeData(
    useMaterial3: true,
    bottomNavigationBarTheme:
        const BottomNavigationBarThemeData(backgroundColor: Colors.red),
    colorScheme: ColorScheme.fromSeed(

        // background: Colors.white,
        primary: const Color(0xFFff6600),
        secondary: const Color(0xFF2d2d2d),
        seedColor: const Color(0xFFff6600)),
    textTheme: const TextTheme(
      //-- subtitle
      titleSmall: TextStyle(
          fontSize: 25, color: Color(0xFF2d2d2d), fontWeight: FontWeight.w600),

      //-- title large
      titleLarge: TextStyle(
          fontSize: 30, color: Color(0xFF121212), fontWeight: FontWeight.bold),

      //-- textbody
      bodySmall: TextStyle(fontSize: 15, color: Color(0xFF121212)),
      bodyLarge: TextStyle(fontSize: 17, color: Color(0xFF121212)),
      bodyMedium: TextStyle(fontSize: 17, color: Colors.white),

      //-- colors
    ));
