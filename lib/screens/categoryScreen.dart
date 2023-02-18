import 'package:evira/widgets/product.dart';
import 'package:evira/widgets/productCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  String category;
  CategoryScreen({super.key, required this.category});

  static const routeName = "/categoryScreen";
  List<ProductCard> categoryProducts = [];

  @override
  Widget build(BuildContext context) {
    for (var element in productCards) {
      if (element.productDetails.categoryName == category) {
        categoryProducts.add(element);
      }
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 24, 26, 33),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          child: Text(category,
              textAlign: TextAlign.left,
              style: GoogleFonts.jost(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500))),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 24, 26, 33),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 30.0,
              mainAxisSpacing: 20.0,
              mainAxisExtent: 240),
          shrinkWrap: true,
          itemCount: categoryProducts.length,
          itemBuilder: (context, index) {
            return categoryProducts[index];
          },
        ),
      ),
      // child: GridView.builder(
      //   itemCount: categoryProducts.length,
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2,
      //       crossAxisSpacing: 30.0,
      //       mainAxisSpacing: 70.0),
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(child: categoryProducts[index]);
      //   },
    );

    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: <Widget>[
    //         ProductCard(
    //             productDetails: Product(
    //           id: "1",
    //           imageUrl: "assets/shoes.png",
    //           name: "Suga Leather Shoes",
    //           price: 445,
    //           numberOfItemsSold: 8374,
    //           categoryName: "Sports",
    //         )),
    //         ProductCard(
    //             productDetails: Product(
    //           id: "1",
    //           imageUrl: "assets/camera.png",
    //           name: "Suga Leather Shoes",
    //           price: 445,
    //           numberOfItemsSold: 8374,
    //           categoryName: "Sports",
    //         )),
    //       ],
    //     ),
    //     const SizedBox(
    //       height: 20,
    //     ),
    // ),

    // ListView.builder(
    //               itemCount: categoryProducts.length,
    //               itemBuilder: (context, index) => categoryProducts[index])),
  }
}
