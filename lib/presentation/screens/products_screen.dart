import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/presentation/widgets/custom_app_bar.dart';
import 'package:runway/presentation/widgets/filter_bar.dart';
import 'package:runway/presentation/widgets/product_card.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  static String id = "ProductsScreen";

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "assets/images/icons/Men.svg",
        //TODO: nav.pop
        preffixIcon: "assets/images/icons/arrow-left.svg",
        suffixIcon: "assets/images/icons/bag.svg",
      ),
      body: Column(
        children: [
          Divider(thickness: 2, color: Colors.grey[200]),
          FilterBar(
            isGrid: isGrid,
            onTap: () => setState(() {
              isGrid = !isGrid;
            }),
          ),
          Divider(thickness: 2, color: Colors.grey[200]),
          ProductCard(isGrid: isGrid),
        ],
      ),
    );
  }
}
