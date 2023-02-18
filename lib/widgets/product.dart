class Product {
  String id;
  String imageUrl;
  String name;
  double price;
  int numberOfItemsSold;
  String categoryName;

  Product(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.price,
      required this.numberOfItemsSold,
      required this.categoryName});
}
