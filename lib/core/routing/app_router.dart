import 'package:flutter/material.dart';
import 'package:forge/core/routing/router.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case Routes.logingScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
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
