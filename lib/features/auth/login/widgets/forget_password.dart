import 'package:flutter/material.dart';
import 'package:forge/core/theming/style.dart';

class ForgetPassord extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.topEnd,
      child: TextButton(
        onPressed: () {},
        child: Text('Forgot Password?', style: TextStyles.font13WhiteSemiBold),
      ),
    );
  }
}
