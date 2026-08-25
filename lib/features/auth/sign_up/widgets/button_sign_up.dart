import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/theming/color.dart';
import 'package:forge/core/theming/style.dart';

class ButtonSignUp extends StatelessWidget {
  final GlobalKey<FormState> fromKey;
  const new({super.key, required this.fromKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342.w,
      height: 56.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.redMain,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: () {
          if (!fromKey.currentState!.validate()) {}
        },
        child: Text('Sign Up', style: TextStyles.fontInter16WhiteBold),
      ),
    );
  }
}
