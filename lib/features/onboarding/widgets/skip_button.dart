import 'package:flutter/material.dart';
import 'package:forge/core/routing/router.dart';
import 'package:forge/core/theming/style.dart';

class SkipButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.topEnd,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.logingScreen);
        },
        child: Text('Skip', style: TextStyles.font15GreySemiBold),
      ),
    );
  }
}
