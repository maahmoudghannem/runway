import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../screens/product_details_screen.dart';
import '../../data/product_getter.dart';
import '../models/product_model.dart';
import 'snack_bar.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.isGrid});

  final bool isGrid;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  List<Product> products = getProductDetails();

  @override
  Widget build(BuildContext context) {
    return widget.isGrid
        ? Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetailsScreen(product: product),
                      ),
                    );
                  },
                  child: Hero(
                    tag: product.title,
                    child: SizedBox(
                      height: 320,
                      width: 210,
                      child: Column(
                        children: [
                          Card(
                            elevation: 0,
                            color: Colors.grey[200],
                            child: Image.asset(
                              product.image,
                              height: 255,
                              width: 200,
                            ),
                          ),
                          Gap(6),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.title,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Gap(4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      product.price,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          product.isPressed =
                                              !product.isPressed;
                                        });
                                        product.isPressed
                                            ? showSnackBar(
                                                context,
                                                "Item Added to Favourites",
                                              )
                                            : showSnackBar(
                                                context,
                                                "Item Removed from Favourites",
                                              );
                                      },
                                      icon: product.isPressed
                                          ? Icon(
                                              Icons.favorite_rounded,
                                              color: Colors.red,
                                            )
                                          : Icon(Icons.favorite_border_rounded),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        : Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 16,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              ProductDetailsScreen(product: product),
                        ),
                      );
                    },
                    child: ListTile(
                      leading: Image.asset(
                        product.image,
                        width: 70,
                        height: 70,
                      ),
                      title: Text(
                        product.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        product.price,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            product.isPressed = !product.isPressed;
                          });
                          product.isPressed
                              ? showSnackBar(
                                  context,
                                  "Item Added to Favourites",
                                )
                              : showSnackBar(
                                  context,
                                  "Item Removed from Favourites",
                                );
                        },
                        icon: product.isPressed
                            ? const Icon(Icons.favorite, color: Colors.red)
                            : const Icon(Icons.favorite_border),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
  }
}
