import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:forge/core/theming/color.dart';
import 'package:forge/core/theming/style.dart';

class TearmAndCondtionsBox extends StatefulWidget {
  const new({super.key});

  @override
  State<TearmAndCondtionsBox> createState() => _TearmAndCondtionsBoxState();
}

class _TearmAndCondtionsBoxState extends State<TearmAndCondtionsBox> {
  bool confirmation = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: confirmation,
          onChanged: (value) {
            setState(() {
              confirmation = value!;
            });
          },
          activeColor: ColorManager.redMain,
          side: BorderSide(color: ColorManager.lightGrey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(4.r),
          ),
        ),
        Text(
          'I agree to the Terms & Privacy Policy',
          style: TextStyles.font15LightGreyRegularWeight,
        ),
      ],
    );
  }
}
