import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomLogoWidget extends StatelessWidget {
  const CustomLogoWidget({super.key, this.onTap, this.svgColor});

  final VoidCallback? onTap;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
        // child: Row(
        //   mainAxisSize: .max,
        //   children: [
        //     SvgPicture.asset(
        //       'assets/svg/halfDown.svg',
        //       colorFilter: svgColor != null
        //           ? ColorFilter.mode(svgColor!, BlendMode.srcIn)
        //           : null,
        //     ),
        //     SvgPicture.asset('assets/svg/halfUp.svg'),
        //   ],
        // ),
      ),
    );
  }
}

// child: Container(
      //   // color: Colors.red,
      //   width: 100,
      //   height: 100,
      //   child: Column(
      //     children: [
      //       GestureDetector(
      //         onTap: () {
      //           changeLogoColor(_svgColor, AppColors.onTapFirstPartLogoColor);
      //           setState(() {});
      //         },
      //         child: SvgPicture.asset(
      //           'assets/svg/halfDown.svg',
      //           width: 26,
      //           height: 40,
      //           colorFilter: ColorFilter.mode(_svgColor, BlendMode.srcIn),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
               
      //          changeLogoColor(_svgColor,AppColors.onTapSecondPartLogoColor);
      //           setState(() {});
      //         },
      //         child: SvgPicture.asset(
      //           'assets/svg/halfUp.svg',
      //           colorFilter: ColorFilter.mode(_svgColor, BlendMode.srcIn),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),