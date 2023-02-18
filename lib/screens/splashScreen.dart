import 'dart:async';

import 'package:evira/screens/landingScreen.dart';
import 'package:evira/screens/onBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool showHome = (prefs.getBool('showHome') ?? false);

    if (showHome) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LandingScreen()));
    } else {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    }
  }

  @override
  void initState() {
    Timer(const Duration(milliseconds: 4000), () {
      checkFirstSeen();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/splash.jpeg'), fit: BoxFit.cover),
              gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.white60,
                Colors.white,
                Colors.white
              ], begin: Alignment.topCenter, end: Alignment.center)),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 0, 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Welcome to",
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 32))),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Text(
                        '\uD83D\uDC4B ',
                        style: TextStyle(fontSize: 25, color: Colors.yellow),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text("Evira",
                    style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 52,
                            fontWeight: FontWeight.w700))),
                const SizedBox(
                  height: 5,
                ),
                Text(
                    "The best e-commerce app of the century to fulfill your daily needs!",
                    style: GoogleFonts.jost(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 14)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
