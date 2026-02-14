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
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'counter: ${state.value}',
                        style: const TextStyle(fontSize: 24, fontWeight: .bold),
                      ),
                      const SizedBox(height: 20),
                      CustomLogoWidget(
                        onTap: () =>
                            context.read<CounterBloc>().add(IncrementCount()),
                      ),
                    ],
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
