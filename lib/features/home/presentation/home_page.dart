import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_task/shared/widgets/custom_logo.dart';
import 'package:test_task/shared/widgets/nav_bar.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: CustomLogoWidget()
            ),
            const Align(
              alignment: .bottomCenter,
              child: CustomNavBar(activePage: 'page 1'),
            )
            ],
            ),
    );
  }
}
