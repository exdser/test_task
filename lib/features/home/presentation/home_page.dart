import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/features/home/bloc/home_bloc.dart';
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
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return CustomLogoWidget(
                    svgColorPartOne: state.logoColorPartOne,
                    svgColorPartTwo: state.logoColorPartTwo,
                    onTap: () =>
                        context.read<HomeBloc>().add(ToggleLogoColor()),
                  );
                },
              ),
            ),

            const Align(
              alignment: .bottomCenter,
              child: CustomNavBar(activePage: 'page 1'),
            ),
          ],
        ),
      ),
    );
  }
}
