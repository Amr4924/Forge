import 'package:flutter/material.dart';
import 'package:forge/core/theming/style.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen", style: TextStyles.fontInter28WhiteExtraBold),
      ),
    );
  }
}
