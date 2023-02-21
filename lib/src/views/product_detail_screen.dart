import 'package:evira/src/models/cart/cart.dart';
import 'package:evira/src/models/product/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({super.key, required this.details});

  Product details;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int numberOfItem = 1;
  Color currentColor = Colors.white;

  void changeColor(Color color) => setState(() => currentColor = color);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);
    Product details = widget.details;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 24, 26, 33),
          body: ListView(
            children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  decoration: const BoxDecoration(color: Color(0xff35383f)),
                  height: 250,
                  width: double.infinity,
                  child: Image(image: AssetImage(details.imageUrl)),
                ),
                Positioned(
                    top: 20,
                    left: 10,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )),
              ]),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(details.name,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.jost(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500))),
                        const Icon(
                          Icons.favorite_outline_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xff35383f),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Text("${details.numberOfItemsSold} sold",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.jost(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.star_border_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                        Text("4.5 (5,389 review) ",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.jost(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Text("Description",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500))),
                    Text(
                        "A shoe is an item of footwear intended to protect and comfort the human foot. They are often worn with a sock. Shoes are also used as an item of decoration and fashion.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400))),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Color",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500))),
                    SizedBox(
                      height: 70,
                      child: BlockPicker(
                          availableColors: const <Color>[
                            Colors.black,
                            Colors.white,
                            Colors.yellow,
                            Colors.blue
                          ],
                          pickerColor: Colors.black,
                          onColorChanged: changeColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Quantity",
                            textAlign: TextAlign.left,
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
                                      setState(() {
                                        numberOfItem -= 1;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 18,
                                    )),
                                Text(numberOfItem.toString(),
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500))),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        numberOfItem += 1;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 18,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Total price",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.jost(
                                    textStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500))),
                            Text("\$${details.price}",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.jost(
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)))
                          ],
                        ),
                        FilledButton(
                            style: FilledButton.styleFrom(
                                backgroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10)),
                            onPressed: () {
                              cart.addItem(
                                  details.id,
                                  CartItem(
                                      product: details,
                                      quantity: numberOfItem));
                            },
                            child: Row(
                              children: <Widget>[
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black,
                                      size: 18,
                                    )),
                                Text("Add to Cart",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                        textStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500)))
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
