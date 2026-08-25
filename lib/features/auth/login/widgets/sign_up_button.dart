import 'package:flutter/material.dart';
import 'package:forge/core/routing/router.dart';
import 'package:forge/core/theming/style.dart';

class SignUpButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyles.font15LightGreyRegularWeight,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.signUpScreen);
          },
          child: Text('Sign Up', style: TextStyles.fontInter14RedBold),
        ),
      ],
    );
  }
}
