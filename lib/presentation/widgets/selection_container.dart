import 'package:flutter/material.dart';
import 'selsction_container_body.dart';

class CustomSelectionContainer extends StatelessWidget {
  const CustomSelectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            CustomSelectionContainerBody(text: "Select colour"),
            VerticalDivider(
              indent: 10,
              endIndent: 10,
              thickness: 2,
              color: Colors.grey[200],
            ),
            CustomSelectionContainerBody(text: "Select size"),
          ],
        ),
      ),
    );
  }
}
