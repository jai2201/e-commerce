import 'package:evira/screens/homeScreen.dart';
import 'package:evira/screens/landingScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const routeName = "/onboardingScreen";

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 24, 26, 33),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
          child: PageView(
            onPageChanged: (index) => {setState(() => isLastPage = index == 2)},
            controller: controller,
            children: [
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 24, 26, 33)),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 80,
                    ),
                    Image.asset(
                      'assets/initial_onboarding.png',
                      height: 320,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text("We provide high quality products just for you",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500)))
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 24, 26, 33)),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 80,
                    ),
                    Image.asset(
                      'assets/middle_onboarding.png',
                      height: 320,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text("Your satisfaction is our number one priority",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500)))
                  ],
                ),
              ),
              Container(
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 24, 26, 33)),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 80,
                    ),
                    Image.asset(
                      'assets/final_onboarding.png',
                      height: 320,
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text("Let's fulfill your daily needs with Evira right now!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500)))
                  ],
                ),
              )
            ],
          ),
        ),
        bottomSheet: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 24, 26, 33)),
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            child: Column(
              children: <Widget>[
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const WormEffect(
                      activeDotColor: Colors.white,
                      dotHeight: 8,
                      dotColor: Colors.blueGrey,
                      dotWidth: 10,
                    ),
                    onDotClicked: (index) => {
                      controller.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn)
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(50)),
                      onPressed: () async {
                        final SharedPreferences prefs;
                        prefs = await SharedPreferences.getInstance();
                        isLastPage
                            ? {
                                prefs.setBool('showHome', true),
                                // ignore: use_build_context_synchronously
                                Navigator.of(context).pushReplacementNamed(
                                    LandingScreen.routeName)
                              }
                            : controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                      },
                      child: isLastPage
                          ? Text("Get started",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)))
                          : Text("Next",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
