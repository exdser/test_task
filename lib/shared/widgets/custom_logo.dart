import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({super.key, this.onTap, this.svgColorPartOne});

  final VoidCallback? onTap;
  final Color? svgColorPartOne;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          child: Row(
            mainAxisSize: .min,
            children: [
              SvgPicture.asset(
                'assets/svg/half_down.svg',
                width: 100,
                height: 100,
                colorFilter: svgColorPartOne != null
                    ? ColorFilter.mode(svgColorPartOne!, BlendMode.srcIn)
                    : null,
              ),
              SvgPicture.asset(
                'assets/svg/half_up.svg',
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
