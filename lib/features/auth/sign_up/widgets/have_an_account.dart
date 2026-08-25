import 'package:flutter/material.dart';
import 'package:forge/core/theming/style.dart';

class HaveAnAccount extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: TextStyles.font15LightGreyRegularWeight,
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Log In', style: TextStyles.fontInter14RedBold),
        ),
      ],
    );
  }
}
