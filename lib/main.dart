import 'package:flutter/material.dart';
import 'package:logistic_project/common_files/routes.dart';

void main() {
  runApp(const LogisticApp());
}

class LogisticApp extends StatelessWidget {
  const LogisticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: appRoutes,
    );
  }
}
