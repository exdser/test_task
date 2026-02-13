import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_task/core/router/app_router.dart';
import 'package:test_task/core/theme/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  final String activePage;
  const CustomNavBar({super.key, required this.activePage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: .center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: activePage == 'page 1'
                  ? AppColors.enableButtonColor
                  : AppColors.disableButtonColor,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: .w400,
                fontFamily: 'Inter',
              ),
              shape: RoundedRectangleBorder(),
              fixedSize: Size(150, 75),
            ),
            onPressed: () => context.router.replace(const RouteOneRoute()),
            child: Text('page 1'),
          ),
          SizedBox(width: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: activePage == 'page 2'
                  ? AppColors.enableButtonColor
                  : AppColors.disableButtonColor,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: .w400,
                fontFamily: 'Inter',
              ),
              shape: RoundedRectangleBorder(),
              fixedSize: Size(150, 75),
            ),
            onPressed: () => context.router.replace(const RouteTwoRoute()),
            child: Text('page 2'),
          ),
        ],
      ),
    );
  }
}
