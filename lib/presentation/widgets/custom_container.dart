import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    super.key,
    this.child,
    this.height,
    this.width,
    this.color = Colors.transparent,
  });

  final Widget? child;
  final Color color;
  final double? height, width;
  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffD9D9D9)),
        color: widget.color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: widget.child,
    );
  }
}
