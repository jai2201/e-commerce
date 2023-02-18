import 'package:evira/screens/loginScreen.dart';
import 'package:evira/screens/signupScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});
  static const routeName = "/landingScreen";

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 24, 26, 33),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
            child: Column(children: <Widget>[
              const SizedBox(height: 50),
              const Image(
                image: AssetImage('assets/landing.png'),
                height: 300,
                width: double.infinity,
              ),
              Text("Let's you in",
                  style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: <Widget>[
                    FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: const Size.fromHeight(50)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                        },
                        child: Text("Login",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jost(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)))),
                    const SizedBox(
                      height: 30,
                    ),
                    FilledButton(
                        style: FilledButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: const Size.fromHeight(50)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                        },
                        child: Text("Signup",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jost(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500))))
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
