import 'package:evira/widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartProduct extends StatelessWidget {
  final CartItem cartItem;
  const CartProduct(this.cartItem, {super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    return SizedBox(
        height: 180,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xff21232A),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        width: 120,
                        decoration: const BoxDecoration(
                            color: Color(0xff35383f),
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            cartItem.product.imageUrl,
                            height: 100,
                            width: 100,
                          ),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(cartItem.product.name,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))),
                            IconButton(
                                onPressed: () {
                                  cart.removeCompleteItem(cartItem.product.id);
                                },
                                icon: const Icon(
                                  Icons.delete_outline_rounded,
                                  color: Colors.white,
                                  size: 18,
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Text("\$${cartItem.product.price}",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500))),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xff35383f),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: SizedBox(
                                height: 35,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    IconButton(
                                        onPressed: () {
                                          if (cartItem.quantity > 1) {
                                            cart.removeItem(cartItem.product.id);
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 16,
                                        )),
                                    Text(cartItem.quantity.toString(),
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.jost(
                                            textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500))),
                                    IconButton(
                                        onPressed: () {
                                          if (cartItem.quantity > 0 &&
                                              cartItem.quantity < 100) {
                                            cart.addItem(cartItem.product.id, cartItem);
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 16,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ));
  }
}
