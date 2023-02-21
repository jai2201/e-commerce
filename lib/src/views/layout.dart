import 'package:evira/src/views/home_screen.dart';
import 'package:evira/src/views/cart_screen.dart';
import 'package:evira/src/views/search_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Layout extends StatefulWidget {
  const Layout({super.key});

  static const routeName = '/layoutScreen';

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  void _onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        children: const [
          HomeScreen(),
          SearchScreen(),
          MyCartScreen(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 58,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
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
          ],
        ),
      ),
    );
  }
}
