import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forge/core/theming/color.dart';
import 'package:forge/core/theming/style.dart';

class OnboardingContinerPage extends StatelessWidget {
  final bool isLastPage;
  final String svgIcon;
  final String textTitlePage;
  final String textDesPage;
  const OnboardingContinerPage({
    super.key,
    required this.isLastPage,
    required this.svgIcon,
    required this.textTitlePage,
    required this.textDesPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.blackBackground,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                CircleAvatar(
                  radius: 125.r,
                  backgroundColor: ColorManager.redLowOpacity,
                  child: SvgPicture.asset(svgIcon, width: 88.w, height: 88.h),
                ),
                SizedBox(height: 50.h),
                Text(
                  textTitlePage,
                  style: TextStyles.font34WhiteBlackWeight,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.h),
                Text(
                  textDesPage,
                  style: TextStyles.font15LightGreyRegularWeight,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
