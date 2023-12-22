class Product {
  String title;
  String imgePath;
  String price;

  Product({required this.title, required this.imgePath, required this.price});
}

List<Product> products = [
  Product(
      imgePath: "assets/images/products/1.jpg",
      title: "Nike Sportswear Club Fleece",
      price: "48"),
  Product(
      imgePath: "assets/images/products/2.jpg",
      title: "Trail Running Jacket Nike Windrunner",
      price: "96"),
  Product(
      imgePath: "assets/images/products/3.jpg",
      title: "Training Top Nike Sport Clash",
      price: "99"),
  Product(
      imgePath: "assets/images/products/1.jpg",
      title: "Trail Running Jacket Nike Windrunner",
      price: "99"),
];
