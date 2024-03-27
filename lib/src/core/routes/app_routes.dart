import 'package:crypto_app/src/core/routes/routes_path.dart';
import 'package:crypto_app/src/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../screens/home/detail_screen.dart';
import '../../screens/home/home_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> appRouter(RouteSettings routeSettings) => {
        RoutesPath.homeScreen: (context) => const HomeScreen(),
        RoutesPath.onboardingScreen: (context) => const OnboardingScreen(),
        RoutesPath.detailScreen: (context) => const DetailScreen(),
      };
}
