import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/presentation/models/product_model.dart';
import 'package:runway/presentation/widgets/custom_app_bar.dart';
import 'package:runway/presentation/widgets/snack_bar.dart';

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
          Container(
            // color: Colors.grey[200],
            child: Center(
              child: Image.asset(widget.product.image, fit: BoxFit.contain),
            ),
          ),

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
                        const Gap(20),
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
                            // const Gap(240),
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
                        const Gap(25),
                        Container(
                          height: 55,
                          width: 390,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffD9D9D9)),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Select colour",
                                      style: TextStyle(
                                        fontSize: 18,
                                        // color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Gap(10),
                                    SvgPicture.asset(
                                      "assets/images/icons/arrows.svg",
                                    ),
                                  ],
                                ),
                                VerticalDivider(
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 2,
                                  color: Colors.grey[200],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Select Size",
                                      style: TextStyle(
                                        fontSize: 18,
                                        // color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Gap(10),
                                    SvgPicture.asset(
                                      "assets/images/icons/arrows.svg",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
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
