import 'package:flutter/material.dart';
import 'package:test_task/features/home/presentation/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PageOneScreen());
  }
}

