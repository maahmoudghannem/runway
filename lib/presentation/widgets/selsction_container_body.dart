import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomSelectionContainerBody extends StatefulWidget {
  const CustomSelectionContainerBody({super.key, required this.text});

  final String text;

  @override
  State<CustomSelectionContainerBody> createState() =>
      _CustomSelectionContainerBodyState();
}

class _CustomSelectionContainerBodyState
    extends State<CustomSelectionContainerBody> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Gap(10),
        SvgPicture.asset("assets/images/icons/arrows.svg"),
      ],
    );
  }
}
