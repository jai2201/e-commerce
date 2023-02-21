import 'package:evira/src/views/category_screen.dart';
import 'package:evira/src/models/product/product_card.dart';
import 'package:evira/src/views/special_offers_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentBanner = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 26, 33),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Row(
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpeg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Good Morning",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jost(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300))),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text('\uD83D\uDC4B ',
                            style:
                                TextStyle(fontSize: 14, color: Colors.yellow))
                      ],
                    ),
                    Text("Andrew Ainsley",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500))),
                  ],
                ),
              )
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 10, 0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // do something
                  },
                ),
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // do something
                  },
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 24, 26, 33),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: ListView(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Special Offers",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500))),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(SpecialOfferScreen.routeName);
                    },
                    child: Text("See All",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500))))
              ],
            ),
            SizedBox(
              height: 185,
              width: double.infinity,
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      //1st Image of Slider
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
                    ],
                    //Slider Container properties
                    options: CarouselOptions(
                      height: 165.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.easeOut,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentBanner = index;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: CarouselIndicator(
                      index: _currentBanner,
                      count: 3,
                      width: 5,
                      height: 5,
                      cornerRadius: 6,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  width: 70,
                  height: 75,
                  child: Column(
                    children: <Widget>[
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff35383f),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.watch_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryScreen(category: "Watch")));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Watch",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 75,
                  child: Column(
                    children: <Widget>[
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff35383f),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.toys_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryScreen(category: "Toys")));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Toys",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 75,
                  child: Column(
                    children: <Widget>[
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff35383f),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.kitchen_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryScreen(category: "Kitchen")));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Kitchen",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 75,
                  child: Column(
                    children: <Widget>[
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff35383f),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.diamond_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryScreen(category: "Jewellary")));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Jewellary",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  width: 70,
                  height: 75,
                  child: Column(
                    children: <Widget>[
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff35383f),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.shopping_bag_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryScreen(category: "Bags")));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Bags",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 75,
                  child: Column(
                    children: <Widget>[
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff35383f),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.electrical_services_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryScreen(
                                        category: "Electronics")));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Electronics",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 75,
                  child: Column(
                    children: <Widget>[
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff35383f),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.sports_football_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CategoryScreen(category: "Sports")));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Sports",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                ),
                SizedBox(
                  width: 70,
                  height: 75,
                  child: Column(
                    children: <Widget>[
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff35383f),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.collections_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryScreen(
                                        category: "Collections")));
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Collections",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.jost(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Most Popular",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500))),
                TextButton(
                    onPressed: () {},
                    child: Text("See All",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500))))
              ],
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 30.0,
                  mainAxisSpacing: 20.0,
                  mainAxisExtent: 240),
              shrinkWrap: true,
              itemCount: productCards.length,
              itemBuilder: (context, index) {
                return productCards[index];
              },
            ),
          ])),
    );
  }
}
