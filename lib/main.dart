import 'package:flutter/material.dart';
import 'package:linhtest/src/features/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const OnBoardingScreen(),
    theme: ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16),
            primary: const Color(0xff101010),
            textStyle: const TextStyle(fontSize: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            )),
      ),
    ),
  ));
}
