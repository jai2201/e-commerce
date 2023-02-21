import 'package:evira/src/models/cart/cart.dart';
import 'package:evira/src/models/cart/cart_item_layout.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});
  static const routeName = "/myCartScreen";

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    return Scaffold(
      appBar: AppBar(
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
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 24, 26, 33),
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 24, 26, 33)),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
            child: Column(
              children: <Widget>[
                Expanded(
                  // child: Container(),
                  child: ListView.builder(
                      itemCount: cart.items.length,
                      itemBuilder: (context, index) =>
                          CartItemLayout(cart.items.values.toList()[index])),
                ),
              ],
            )),
      ),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 24, 26, 33),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 24, 26, 33),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 5.0,
              ),
            ],
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
          ),
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Total price",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                    Text("\$${cart.getTotalPrice()}",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500))),
                  ],
                ),
                FilledButton(
                    style: FilledButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size(50, 40)),
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Text("Checkout",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.jost(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500))),
                        const Icon(
                          Icons.arrow_right_alt,
                          color: Colors.black,
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
