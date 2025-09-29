import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../data/category_getter.dart';
import '../models/category_model.dart';
import 'snack_bar.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = getCategoris();

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: GestureDetector(
              onTap: () {
                if (category.screen != null) {
                  Navigator.pushNamed(context, category.screen.toString());
                } else {
                  showSnackBar(
                    context,
                    "${category.title} category is not available yet ",
                  );
                }
              },
              child: Column(
                children: [
                  Container(
                    height: 85,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: Image.asset(category.image, fit: BoxFit.cover),
                    ),
                  ),
                  Gap(16),
                  Text(
                    category.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
