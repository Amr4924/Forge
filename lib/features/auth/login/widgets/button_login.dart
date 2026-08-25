import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/theming/color.dart';
import 'package:forge/core/theming/style.dart';

class ButtonLogin extends StatelessWidget {
  final GlobalKey<FormState> formkey;

  const new({super.key,required this.formkey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342.w,
      height: 56.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: ColorManager.redMain),
        onPressed: () {
          if(!formkey.currentState!.validate()){

          }
        },
        child: Text('Log In', style: TextStyles.fontInter16WhiteBold),
      ),
    );
  }
}
