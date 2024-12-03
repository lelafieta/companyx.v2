import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../features/splsh&onboarding/ui/pages/on_boarding_page.dart';
import 'routes.dart';

class Pages {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const OnBoardingPage();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Center(
            child: Text("PÁGINA NÃO ENCONTRADA"),
          ),
        );
    }
  }
}
