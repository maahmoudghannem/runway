import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.preffixIcon,
    required this.suffixIcon,
  });

  final String title;
  final String preffixIcon;
  final String suffixIcon;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: widget.preferredSize.height,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(widget.preffixIcon, height: 30),
          SvgPicture.asset(widget.title, height: 22),
          SvgPicture.asset(widget.suffixIcon, height: 28),
        ],
      ),
    );
  }
}
