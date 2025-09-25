import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/presentation/widgets/custom_app_bar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  static String id = "ProductsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "assets/images/icons/Men.svg",
        preffixIcon: "assets/images/icons/arrow-left.svg",
        suffixIcon: "assets/images/icons/bag.svg",
      ),

      body: Column(
        children: [
          Divider(thickness: 2, color: Colors.grey[300]),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sort by",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Gap(15),
                  SvgPicture.asset("assets/images/icons/arrows.svg"),
                  Gap(169),
                  SvgPicture.asset("assets/images/icons/filter.svg"),
                  Gap(5),
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Gap(20),
                  SvgPicture.asset("assets/images/icons/grid.svg"),
                  Gap(10),
                  SvgPicture.asset("assets/images/icons/users.svg"),
                ],
              ),
            ),
          ),
          Divider(thickness: 2, color: Colors.grey[200]),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 320,
                  width: 210,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      Card(
                        elevation: 0,
                        color: Colors.grey[200],
                        child: Image.asset(
                          "assets/images/models/classictailored.png",
                          height: 255,
                          width: 200,
                        ),
                      ),
                      Gap(6),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Top man black",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                // vertical: 5,
                                // horizontal: 12.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "£30",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Icon(Icons.favorite_outline_rounded),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
