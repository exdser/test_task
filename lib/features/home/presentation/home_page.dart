import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_task/core/theme/app_colors.dart';
import 'package:test_task/shared/widgets/custom_logo.dart';

@RoutePage()
class PageOneScreen extends StatefulWidget {
  const PageOneScreen({super.key});

  @override
  State<PageOneScreen> createState() => _PageOneScreenState();
}

class _PageOneScreenState extends State<PageOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .end,
        children: [
          CustomLogoWidget(),
          Row(
            mainAxisAlignment: .end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.enableButtonColor,
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
                onPressed: () {},
                child: Text('page 1'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.disableButtonColor,
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
                onPressed: () {
                  
                },
                child: Text('page 2'),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
