import 'package:flutter/material.dart';
import 'package:forge/core/routing/router.dart';
import 'package:forge/features/login/ui/widgets/login_screen.dart';
import 'package:forge/features/onboarding/onbording_screen.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) =>const OnboardingScreen());
      case Routes.logingScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No Routes defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
