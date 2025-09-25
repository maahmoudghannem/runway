import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  final List<Map> categories = const [
    {"title": "Women", "image": "assets/images/category/women.png"},
    {"title": "Men", "image": "assets/images/category/men.png"},
    {"title": "Kids", "image": "assets/images/category/kids.png"},
    {"title": "Deals", "image": "assets/images/category/deals.png"},
    {"title": "Home", "image": "assets/images/category/image.png"},
  ];

  final String homeImage = "assets/images/category/image.png";

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              children: [
                Container(
                  height: 85,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(150),
                    child: Image.asset(
                      categories[index]["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Gap(16),
                Text(
                  categories[index]["title"],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
