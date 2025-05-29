import 'package:flutter/material.dart';
import 'package:tasky/constants/app_colors.dart';
import 'package:tasky/constants/font_family.dart';
import 'package:tasky/constants/routes.dart';
import 'package:tasky/constants/text_theme.dart';
import 'package:tasky/routes.dart';
import 'package:tasky/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.userDetailsScreen,
      routes: appRoutes,
      title: 'Tasky',
      theme: ThemeData(
        // scaffoldBackgroundColor: Color(0xFF181818),
        fontFamily: FontFamily.plusJakarta,
        primaryColor: AppColors.primary,
        textTheme: AppTextStyles.textTheme,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.dark,
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
