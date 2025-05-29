import 'package:flutter/material.dart';
import 'package:tasky/constants/font_family.dart';

class AppTextStyles {
  static const String fontFamily = FontFamily.plusJakarta;
  static const FontWeight meduimWeight = FontWeight.w400;

  static final TextTheme textTheme = TextTheme(
    // displayLarge: TextStyle(
    //   fontFamily: fontFamily,
    //   fontWeight: FontWeight.bold,
    //   fontSize: 57,
    // ),
    // displayMedium: TextStyle(
    //   fontFamily: fontFamily,
    //   fontWeight: meduimWeight,
    //   fontSize: 45,
    // ),
    // displaySmall: TextStyle(
    //   fontFamily: fontFamily,
    //   fontWeight: meduimWeight,
    //   fontSize: 36,
    // ),
    headlineLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),

    //used
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: meduimWeight,
      fontSize: 28,
    ),
    headlineSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: meduimWeight,
      fontSize: 24,
    ),

    titleLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: meduimWeight,
      fontSize: 22,
    ),
    titleMedium: TextStyle(
      fontFamily: fontFamily,
      fontWeight: meduimWeight,
      fontSize: 16,
    ),

    titleSmall: TextStyle(
      fontFamily: fontFamily,
      fontWeight: meduimWeight,
      fontSize: 14,
    ),

    //     bodyLarge: TextStyle(
    //       fontFamily: fontFamily,
    //       fontWeight: meduimWeight,
    //       fontSize: 16,
    //     ),
    //     bodyMedium: TextStyle(
    //       fontFamily: fontFamily,
    //       fontWeight: meduimWeight,
    //       fontSize: 14,
    //     ),
    //     bodySmall: TextStyle(
    //       fontFamily: fontFamily,
    //       fontWeight: meduimWeight,
    //       fontSize: 12,
    //     ),
    labelLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: meduimWeight,
      fontSize: 14,
    ),
    //     labelMedium: TextStyle(
    //       fontFamily: fontFamily,
    //       fontWeight: meduimWeight,
    //       fontSize: 12,
    //     ),
    //     labelSmall: TextStyle(
    //       fontFamily: fontFamily,
    //       fontWeight: meduimWeight,
    //       fontSize: 11,
    //     ),
  );
}
