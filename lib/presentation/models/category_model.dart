import 'package:flutter/widgets.dart';

class CategoryModel {
  final String image;
  final String title;
  final Widget? screen;

  CategoryModel({required this.image, required this.title, this.screen});
}
