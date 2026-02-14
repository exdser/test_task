import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({super.key, this.onTap, this.svgColorPartOne, this.svgColorPartTwo});

  final VoidCallback? onTap;
  final Color? svgColorPartOne;
  final Color? svgColorPartTwo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(
          mainAxisSize: .min,
          children: [
            SvgPicture.asset(
              'assets/svg/half_down.svg',
              width: 80,
              height: 100,
              colorFilter: svgColorPartOne != null
                  ? ColorFilter.mode(svgColorPartOne!, BlendMode.srcIn)
                  : null,
            ),
            SvgPicture.asset(
              'assets/svg/half_up.svg',
              width: 80,
              height: 100,
              colorFilter: svgColorPartTwo != null
                  ? ColorFilter.mode(svgColorPartTwo!, BlendMode.srcIn)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
