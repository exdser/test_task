import 'package:flutter/material.dart';
import 'package:test_task/core/router/app_router.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      );
  }
}

