import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../models/product_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/product_accordion.dart';
import '../widgets/return_card.dart';
import '../widgets/selection_container.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final Product product;
  static String id = "ProductDetailsScreen";

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        onTap: () => Navigator.pop(context), // back arrow navigation
        title: "assets/images/icons/Men.svg",
        preffixIcon: "assets/images/icons/arrow-left.svg",
        suffixIcon: "assets/images/icons/bag.svg",
      ),
      body: Stack(
        children: [
          Center(child: Image.asset(widget.product.image, fit: BoxFit.contain)),
          DraggableScrollableSheet(
            initialChildSize: 0.2, // starts at 30% of screen
            minChildSize: 0.09,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            width: 42,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                        const Gap(20),
                        Text(
                          widget.product.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Gap(15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.product.price,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: widget.product.isPressed
                                      ? Icon(
                                          Icons.favorite_rounded,
                                          color: Colors.red,
                                        )
                                      : Icon(Icons.favorite_border_rounded),
                                ),
                                Text(
                                  "450",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Gap(20),
                        const CustomSelectionContainer(),
                        const Gap(15),
                        const CustomButton(),
                        const Gap(15),
                        const ReturnCard(),
                        const Gap(20),
                        const Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: Text(
                            "About product",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Gap(20),
                        const ProductAccordion(),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
