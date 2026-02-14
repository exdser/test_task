import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/features/counter/bloc/counter_bloc.dart';
import 'package:test_task/shared/widgets/custom_logo.dart';
import 'package:test_task/shared/widgets/nav_bar.dart';

@RoutePage()
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  return Center(
                    child: SizedBox(
                      height: 200,
                      width: 120,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: Text(
                              'counter: ${state.value}',
                              style: const TextStyle(fontSize: 20, fontWeight: .bold),
                            ),
                          ),
                          Positioned(
                            bottom: 43,
                            child: CustomLogoWidget(
                              onTap: () =>
                                  context.read<CounterBloc>().add(IncrementCount()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const Align(
              alignment: .bottomCenter,
              child: CustomNavBar(activePage: 'page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
