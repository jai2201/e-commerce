import 'package:evira/screens/homeScreen.dart';
import 'package:evira/screens/landingScreen.dart';
import 'package:evira/screens/layout.dart';
import 'package:evira/screens/loginScreen.dart';
import 'package:evira/screens/myCartScreen.dart';
import 'package:evira/screens/onBoardingScreen.dart';
import 'package:evira/screens/searchScreen.dart';
import 'package:evira/screens/signupScreen.dart';
import 'package:evira/screens/specialOfferScreen.dart';
import 'package:evira/widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:evira/screens/splashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider.value(value: CartModel())],
    child: MaterialApp(
      title: 'Evira',
      home: const SplashScreen(),
      routes: {
        OnboardingScreen.routeName: (context) => const OnboardingScreen(),
        LandingScreen.routeName: (context) => const LandingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SpecialOfferScreen.routeName: (context) => const SpecialOfferScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        Layout.routeName: (context) => Layout(selectedIndex: 0,),
        MyCartScreen.routeName: (context) => const MyCartScreen(),
      },
    ),
  ));
}
