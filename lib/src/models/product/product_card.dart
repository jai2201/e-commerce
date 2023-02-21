import 'package:evira/src/views/product_detail_screen.dart';
import 'package:evira/src/models/product/product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.productDetails});

  Product productDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ProductDetailScreen(details: productDetails)));
      },
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xff35383f),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              height: 150,
              width: 170,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image(
                  image: AssetImage(productDetails.imageUrl),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(productDetails.name,
                textAlign: TextAlign.left,
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500))),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: <Widget>[
                const Icon(
                  Icons.star_border_outlined,
                  color: Colors.white,
                  size: 14,
                ),
                Text("4.5 | ",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.jost(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff35383f),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    child: Text("${productDetails.numberOfItemsSold} sold",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.jost(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text("\$${productDetails.price}",
                textAlign: TextAlign.left,
                style: GoogleFonts.jost(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500))),
          ],
        ),
      ),
    );
  }
}

List<ProductCard> productCards = [
  ProductCard(
      productDetails: Product(
    id: "1",
    imageUrl: "assets/shoes.png",
    name: "Suga Leather Shoes",
    price: 1000,
    numberOfItemsSold: 8374,
    categoryName: "Sports",
  )),
  ProductCard(
      productDetails: Product(
    id: "2",
    imageUrl: "assets/camera.png",
    name: "Canon Camera",
    price: 8000,
    numberOfItemsSold: 4794,
    categoryName: "Electronics",
  )),
  ProductCard(
      productDetails: Product(
    id: "3",
    imageUrl: "assets/watch.png",
    name: "Boat Smart Watch",
    price: 2400,
    numberOfItemsSold: 6681,
    categoryName: "Watch",
  )),
  ProductCard(
      productDetails: Product(
    id: "4",
    imageUrl: "assets/kettle.png",
    name: "Kettle",
    price: 1300,
    numberOfItemsSold: 2469,
    categoryName: "Electronics",
  )),
  ProductCard(
      productDetails: Product(
    id: "5",
    imageUrl: "assets/headphones.png",
    name: "Oppo Headphones",
    price: 450,
    numberOfItemsSold: 12000,
    categoryName: "Electronics",
  )),
  ProductCard(
      productDetails: Product(
    id: "6",
    imageUrl: "assets/jewellary.png",
    name: "Gold Necklace",
    price: 120000,
    numberOfItemsSold: 400,
    categoryName: "Jewellary",
  )),
  ProductCard(
      productDetails: Product(
    id: "7",
    imageUrl: "assets/football.png",
    name: "Football",
    price: 600,
    numberOfItemsSold: 9500,
    categoryName: "Sports",
  )),
  ProductCard(
      productDetails: Product(
    id: "8",
    imageUrl: "assets/tshirt.png",
    name: "T-shirt",
    price: 900,
    numberOfItemsSold: 4900,
    categoryName: "Collections",
  )),
  ProductCard(
      productDetails: Product(
    id: "9",
    imageUrl: "assets/plate.png",
    name: "Plate",
    price: 100,
    numberOfItemsSold: 3670,
    categoryName: "Kitchen",
  )),
  ProductCard(
      productDetails: Product(
    id: "10",
    imageUrl: "assets/bags.png",
    name: "Bag",
    price: 850,
    numberOfItemsSold: 3970,
    categoryName: "Bags",
  )),
  ProductCard(
      productDetails: Product(
    id: "11",
    imageUrl: "assets/toys.png",
    name: "Toys",
    price: 190,
    numberOfItemsSold: 3070,
    categoryName: "Toys",
  )),
];
