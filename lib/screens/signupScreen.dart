import 'package:evira/screens/layout.dart';
import 'package:evira/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const routeName = "/signupScreen";

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 26, 33),
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 24, 26, 33),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Text("Create your Account",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.jost(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500))),
              const SizedBox(
                height: 30,
              ),
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 16),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey[500],
                      size: 20,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    fillColor: const Color.fromARGB(255, 20, 22, 28),
                    filled: true,
                    hintText: "Full name",
                    contentPadding: const EdgeInsets.all(20),
                    hintStyle:
                        TextStyle(fontSize: 16, color: Colors.grey[500])),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                style: const TextStyle(color: Colors.white, fontSize: 16),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.grey[500],
                      size: 20,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    fillColor: const Color.fromARGB(255, 20, 22, 28),
                    filled: true,
                    hintText: "Email",
                    contentPadding: const EdgeInsets.all(20),
                    hintStyle:
                        TextStyle(fontSize: 16, color: Colors.grey[500])),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey[500],
                      size: 20,
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white30),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    fillColor: const Color.fromARGB(255, 20, 22, 28),
                    filled: true,
                    hintText: "Password",
                    contentPadding: const EdgeInsets.all(20),
                    hintStyle:
                        TextStyle(fontSize: 16, color: Colors.grey[500])),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text("Remember me",
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )))
                  ]),
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                  style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(50)),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Layout(selectedIndex: 0,)));
                  },
                  child: Text("Sign up",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.jost(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account ?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.jost(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300))),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                      },
                      child: Text("Sign in",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
