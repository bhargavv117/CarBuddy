import 'package:flutter/material.dart';
import 'package:car_buddy/screens/login/login_screen.dart';
import 'package:car_buddy/screens/onboarding/onboarding.dart';
import 'package:car_buddy/screens/signup/signup_screen.dart';
import 'package:car_buddy/utils/routes/routes.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splash:
      return MaterialPageRoute(builder: (context) => const Onboarding());
    case Routes.onboarding:
      return MaterialPageRoute(builder: (context) => const Onboarding());
    case Routes.login:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case Routes.signup:
      return MaterialPageRoute(builder: (context) => const SignupScreen());
    default:
      return MaterialPageRoute(
        builder: (context) => const Onboarding()
      );
  }
}
