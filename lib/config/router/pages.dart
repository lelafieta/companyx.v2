import 'package:animations/animations.dart';
import 'package:companyx/features/employee/ui/pages/employee_page.dart';
import 'package:companyx/features/getstarted/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';

import '../../features/auth/ui/pages/login_page.dart';
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
      case Routes.loginRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const LoginPage();
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
      case Routes.getStartedRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const GetStartedPage();
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

      case Routes.employeeRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return const EmployeePage();
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
