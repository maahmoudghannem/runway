import 'package:flutter/material.dart';
import 'package:runway/presentation/widgets/custom_container.dart';
import 'selsction_container_body.dart';

class CustomSelectionContainer extends StatelessWidget {
  const CustomSelectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 55,
      width: 390,
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
