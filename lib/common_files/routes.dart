import 'package:flutter/material.dart';
import 'package:logistic_project/screens/intro_screen/intro_screen.dart';
import 'package:logistic_project/screens/login_screen/login_screen.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  AppRouteString.initial: (context) => const IntroScreen(),
  AppRouteString.login: (context) => const LoginScreen()
};

class AppRouteString {
  AppRouteString._();
  static const String initial = '/';
  static const String login = '/login';
}
