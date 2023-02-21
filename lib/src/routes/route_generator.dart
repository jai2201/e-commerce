import 'package:evira/src/routes/screen_routes.dart';
import 'package:evira/src/views/cart_screen.dart';
import 'package:evira/src/views/home_screen.dart';
import 'package:evira/src/views/landing_screen.dart';
import 'package:evira/src/views/layout.dart';
import 'package:evira/src/views/login_screen.dart';
import 'package:evira/src/views/onboarding_screen.dart';
import 'package:evira/src/views/search_screen.dart';
import 'package:evira/src/views/signup_screen.dart';
import 'package:evira/src/views/special_offers_screen.dart';
import 'package:evira/src/views/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case ScreenRoutes.splashScreenRoute:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case ScreenRoutes.cartScreenRoute:
        return MaterialPageRoute(builder: ((context) => const MyCartScreen()));
      case ScreenRoutes.homeScreenRoute:
        return MaterialPageRoute(builder: ((context) => const HomeScreen()));
      case ScreenRoutes.landingScreenRoute:
        return MaterialPageRoute(builder: ((context) => const LandingScreen()));
      case ScreenRoutes.layoutScreenRoute:
        return MaterialPageRoute(builder: ((context) => const Layout()));
      case ScreenRoutes.loginScreenRoute:
        return MaterialPageRoute(builder: ((context) => const LoginScreen()));
      case ScreenRoutes.signupSreenRoute:
        return MaterialPageRoute(builder: ((context) => const SignupScreen()));
      case ScreenRoutes.onboardingScreenRoute:
        return MaterialPageRoute(
            builder: ((context) => const OnboardingScreen()));
      case ScreenRoutes.searchScreenRoute:
        return MaterialPageRoute(builder: ((context) => const SearchScreen()));
      case ScreenRoutes.specialOfferScreenRoute:
        return MaterialPageRoute(
            builder: ((context) => const SpecialOfferScreen()));
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
