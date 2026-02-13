import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_task/shared/widgets/custom_logo.dart';
import 'package:test_task/shared/widgets/nav_bar.dart';

@RoutePage()
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final _counter = 0;
  void incrementCounter(int counter) {
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Text('counter:$_counter', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 44),
                  child: GestureDetector(
                    onTap: () => incrementCounter(_counter),
                    child: CustomLogoWidget(),
                  ),
                ),
              ],
            ),
          ),

          const Align(
            alignment: .bottomCenter,
            child: CustomNavBar(activePage: 'page 2'),
          ),
        ],
      ),
    );
  }
}
