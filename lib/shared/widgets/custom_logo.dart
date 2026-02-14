import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({super.key, this.onTap, this.logoColorPartOne, this.logoColorPartTwo});

  final VoidCallback? onTap;
  final Color? logoColorPartOne;
  final Color? logoColorPartTwo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Stack(
          children: [
            Positioned(
              left: 150,
              top: 348,
              child: SvgPicture.asset(
                'assets/svg/half_down.svg',
                width: 80,
                height: 100,
                colorFilter: logoColorPartOne != null
                    ? ColorFilter.mode(logoColorPartOne!, BlendMode.srcIn)
                    : null,
              ),
            ),
            Positioned(
              right: 145,
              top: 350,
              child: SvgPicture.asset(
                'assets/svg/half_up.svg',
                width: 80,
                height: 100,
                colorFilter: logoColorPartTwo != null
                    ? ColorFilter.mode(logoColorPartTwo!, BlendMode.srcIn)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
