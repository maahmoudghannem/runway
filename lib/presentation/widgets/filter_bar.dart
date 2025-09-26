import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key, required this.isGrid, required this.onTap});

  final bool isGrid;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
        child: Row(
          children: [
            Text(
              "Sort by",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Gap(15),
            SvgPicture.asset("assets/images/icons/arrows.svg"),
            Gap(167),
            SvgPicture.asset("assets/images/icons/filter.svg"),
            Gap(5),
            Text(
              "Filter",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Gap(15),
            GestureDetector(
              onTap: onTap,
              child: isGrid
                  ? SvgPicture.asset("assets/images/icons/grid.svg")
                  : Icon(Icons.list_rounded, weight: 900),
            ),
            Gap(10),
            SvgPicture.asset("assets/images/icons/users.svg"),
          ],
        ),
      ),
    );
  }
}
