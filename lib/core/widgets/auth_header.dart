import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:forge/core/theming/style.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String dec;
  const new({super.key, required this.dec, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/Ellipse.svg', height: 260.h),
        Positioned(
          bottom: 0,
          top: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              'FORGE',
              style: TextStyles.fontInter22RedkWeight900.copyWith(
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
        Positioned(
          top: 25.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: -1.h,
          left: 0,
          right: 0,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(title, style: TextStyles.fontInter28WhiteExtraBold),
                  SizedBox(height: 10.h),
                  Text(
                    dec,
                    style: TextStyles.font15LightGreyRegularWeight.copyWith(
                      fontSize: 14,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
