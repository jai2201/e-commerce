import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialOfferScreen extends StatefulWidget {
  const SpecialOfferScreen({super.key});
  static const routeName = "/specialOfferScreen";

  @override
  State<SpecialOfferScreen> createState() => _SpecialOfferScreenState();
}

class _SpecialOfferScreenState extends State<SpecialOfferScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 26, 33),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 24, 26, 33),
        title: Text("Special Offers",
            textAlign: TextAlign.left,
            style: GoogleFonts.jost(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500))),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff35383f),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("30%",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Today's Special!",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Get discount for every order, only valid for today",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Image.asset(
                      "assets/camera.png",
                      width: 130,
                      height: 120,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff35383f),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("25%",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Weekend Deals",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Get discount for every order, only valid for today",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Image.asset(
                      "assets/headphones.png",
                      width: 130,
                      height: 120,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff35383f),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("40%",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("New Arrivals",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Get discount for every order, only valid for today",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Image.asset(
                      "assets/shoes.png",
                      width: 130,
                      height: 120,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff35383f),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("10%",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Special Collections",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Get discount for every order, only valid for today",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Image.asset(
                      "assets/jewellary.png",
                      width: 130,
                      height: 120,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff35383f),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("50%",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("Only on Elctronics",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Get discount for every order, only valid for today",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.jost(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500)))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Image.asset(
                      "assets/watch.png",
                      width: 130,
                      height: 120,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
