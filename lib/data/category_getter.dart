import '../presentation/models/category_model.dart';
import '../presentation/screens/products_screen.dart';

List<CategoryModel> getCategoris() => [
  CategoryModel(image: "assets/images/category/women.png", title: "Women"),
  CategoryModel(
    image: "assets/images/category/men.png",
    title: "Men",
    screen: ProductsScreen(),
  ),
  CategoryModel(image: "assets/images/category/kids.png", title: "Kids"),
  CategoryModel(image: "assets/images/category/deals.png", title: "Deals"),
  CategoryModel(image: "assets/images/category/image.png", title: "Home"),
];
