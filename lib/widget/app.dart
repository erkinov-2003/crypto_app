import 'package:crypto_app/src/core/routes/app_routes.dart';
import 'package:crypto_app/src/core/routes/routes_path.dart';
import 'package:flutter/material.dart';

import '../src/screens/onboarding/onboarding_screen.dart';

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
      initialRoute: RoutesPath.homeScreen,
      onGenerateRoute: (settings) {
        final routes = AppRouter.appRouter(settings);
        final WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
