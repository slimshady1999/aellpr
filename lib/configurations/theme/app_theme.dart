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
          fontFamily: "Poppins-Regular",
          fontSize: 18,
          color: Color(0xFF2d2d2d),
          fontWeight: FontWeight.w600),

      //-- title large
      titleLarge: TextStyle(
          fontFamily: "Poppins-Regular",
          fontSize: 20,
          color: Color(0xFF121212),
          fontWeight: FontWeight.w600),

      //-- textbody
      bodySmall: TextStyle(
          fontFamily: "Poppins-Regular",
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: Color(0xFF121212)),
      bodyLarge: TextStyle(
          fontFamily: "Poppins-Regular",
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFF121212)),
      bodyMedium: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins-Regular",
          fontSize: 14,
          color: Colors.black),

      //-- colors
    ));
