import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/theming/color.dart';

class TextStyles {
  static TextStyle font15GreySemiBold = TextStyle(
    color: ColorManager.lightGrey,
    fontSize: 15.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font34WhiteBlackWeight = TextStyle(
    fontFamily: 'Inter',
    color: const Color(0xffffffff),
    fontSize: 34.sp,
    fontWeight: FontWeight.w900,
    height: 1.1,
  );
  static TextStyle font15LightGreyRegularWeight = TextStyle(
    color: ColorManager.lightGrey,
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle fontInter16WhiteBold = TextStyle(
    color: const Color(0xffffffff),
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter',
  );
  static TextStyle fontInter22RedkWeight900 = TextStyle(
    fontSize: 22.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w900,
    color: ColorManager.redMain,
  );
  static TextStyle fontInter28WhiteExtraBold = TextStyle(
    color: const Color(0xffffffff),
    fontSize: 28.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w800,
  );
  static TextStyle font13WhiteSemiBold = TextStyle(
    fontSize: 13.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    color: const Color(0xffffffff),
  );
  static TextStyle fontInter14RedBold = TextStyle(
    color: ColorManager.redMain,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter',
  );
}
