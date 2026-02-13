import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/core/theme/app_colors.dart';

class CustomLogoWidget extends StatefulWidget {
  const CustomLogoWidget({super.key});

  @override
  State<CustomLogoWidget> createState() => _CustomLogoWidgetState();
}

class _CustomLogoWidgetState extends State<CustomLogoWidget> {
  var _svgColor = AppColors.baseLogoColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // color: Colors.red,
        width: 100,
        height: 100,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                _svgColor = AppColors.onTapFirstPartLogoColor;
                setState(() {});
              },
              child: SvgPicture.asset(
                'assets/svg/halfDown.svg',
                width: 26,
                height: 40,
                colorFilter: ColorFilter.mode(_svgColor, BlendMode.srcIn),
              ),
            ),
            GestureDetector(
              onTap: () {
               
                _svgColor = AppColors.onTapFirstPartLogoColor;
                setState(() {});
              },
              child: SvgPicture.asset(
                'assets/svg/halfUp.svg',
                colorFilter: ColorFilter.mode(_svgColor, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
