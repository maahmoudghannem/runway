import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductAccordion extends StatelessWidget {
  const ProductAccordion({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> items = [
      {
        "icon": "assets/images/icons/productdetails.svg",
        "title": "Product details",
      },
      {"icon": "assets/images/icons/brand.svg", "title": "Brand"},
      {"icon": "assets/images/icons/sizeandfit.svg", "title": "Size and fit"},
      {"icon": "assets/images/icons/history.svg", "title": "History"},
    ];
    //TODO: make a accordionItem model
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffD9D9D9)),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(height: 2, thickness: 1),
        itemBuilder: (context, index) {
          final item = items[index];
          return ExpansionTile(
            leading: SvgPicture.asset(item["icon"]),
            title: Text(
              item["title"],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          );
        },
      ),
    );
  }
}
