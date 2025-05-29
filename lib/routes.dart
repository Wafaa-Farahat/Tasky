import 'package:flutter/material.dart';
import 'package:tasky/constants/routes.dart';
import 'package:tasky/screens/home_screen.dart';
import 'package:tasky/screens/new_task_screen.dart';
import 'package:tasky/screens/user_details_screen.dart';
import 'package:tasky/screens/welcome_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  // Routes.splashScreen: (context) => const SplashScreen(),
  Routes.welcomeScreen: (context) => const WelcomeScreen(),
  Routes.homeScreen: (context) => const HomeScreen(),
  Routes.newTaskScreen: (context) => const NewTaskScreen(),
  // Routes.profileScreen:(context)=> const ,
  // Routes.todoScreen:(context)=> const ,
  // Routes.completedTasksScreen:(context)=> const ,
  Routes.userDetailsScreen: (context) => const UserDetailsScreen(),
  // Routes.todoScreen:(context)=> const ,
};
