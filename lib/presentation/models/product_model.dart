class Product {
  final String title;
  final String price;
  final String image;
  bool isPressed;
  Product({
    required this.title,
    required this.price,
    required this.image,
    this.isPressed = false,
  });
}
