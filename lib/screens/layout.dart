import 'package:evira/screens/homeScreen.dart';
import 'package:evira/screens/myCartScreen.dart';
import 'package:evira/screens/searchScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Layout extends StatefulWidget {
  int selectedIndex;
  Layout({super.key, required this.selectedIndex});

  static const routeName = '/layoutScreen';

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  PageController pageController = PageController();

  void _onTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  List appBars = <Widget>[
    AppBar(
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
                          style: TextStyle(fontSize: 14, color: Colors.yellow))
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
    AppBar(
      backgroundColor: const Color.fromARGB(255, 24, 26, 33),
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text("Search your favorite products",
            textAlign: TextAlign.left,
            style: GoogleFonts.jost(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500))),
      ),
    ),
    AppBar(
      backgroundColor: const Color.fromARGB(255, 24, 26, 33),
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text("My Cart",
            textAlign: TextAlign.left,
            style: GoogleFonts.jost(
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500))),
      ),
    ),
    // AppBar(
    //   backgroundColor: const Color.fromARGB(255, 24, 26, 33),
    //   elevation: 0,
    //   title: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    //     child: Text("My Orders",
    //         textAlign: TextAlign.left,
    //         style: GoogleFonts.jost(
    //             textStyle: const TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.w500))),
    //   ),
    // ),
    // AppBar(
    //   backgroundColor: const Color.fromARGB(255, 24, 26, 33),
    //   elevation: 0,
    //   title: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    //     child: Text("My Profile",
    //         textAlign: TextAlign.left,
    //         style: GoogleFonts.jost(
    //             textStyle: const TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 20,
    //                 fontWeight: FontWeight.w500))),
    //   ),
    // )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars[widget.selectedIndex],
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: pageController,
        children: const [
          HomeScreen(),
          SearchScreen(),
          MyCartScreen(),
          // OrdersScreen(),
          // ProfileScreen()
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 58,
        child: BottomNavigationBar(
          currentIndex: widget.selectedIndex,
          onTap: _onTapped,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 24,
          useLegacyColorScheme: false,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.jost(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500)),
          unselectedLabelStyle: GoogleFonts.jost(
              textStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w500)),
          backgroundColor: const Color.fromARGB(255, 24, 26, 33),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 24, 26, 33),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 24, 26, 33),
              label: "Search",
              icon: Icon(
                Icons.search_outlined,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 24, 26, 33),
              label: "Cart",
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey,
              ),
            ),
            // BottomNavigationBarItem(
            //   activeIcon: Icon(
            //     Icons.shopping_bag,
            //     color: Colors.white,
            //   ),
            //   backgroundColor: Color.fromARGB(255, 24, 26, 33),
            //   label: "Orders",
            //   icon: Icon(
            //     Icons.shopping_bag_outlined,
            //     color: Colors.grey,
            //   ),
            // ),
            // BottomNavigationBarItem(
            //   activeIcon: Icon(
            //     Icons.person,
            //     color: Colors.white,
            //   ),
            //   backgroundColor: Color.fromARGB(255, 24, 26, 33),
            //   label: "Profile",
            //   icon: Icon(
            //     Icons.person_outline,
            //     color: Colors.grey,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
