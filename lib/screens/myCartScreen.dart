import 'package:evira/widgets/cart.dart';
import 'package:evira/widgets/cartproduct.dart';
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
                            CartProduct(cart.items.values.toList()[index])
                  ),
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
            // border: Border.
            // border: Border.symmetric(
            //     vertical: BorderSide(color: Colors.grey, width: 1),
            //     horizontal: BorderSide(color: Colors.grey, width: 1)),
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
                    onPressed: () {

                    },
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
