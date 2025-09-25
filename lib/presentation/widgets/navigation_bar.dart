import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationBarBody extends StatelessWidget {
  const NavigationBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 24,
      backgroundColor: Colors.white,
      destinations: [
        SvgPicture.asset("assets/images/icons/home.svg"),
        SvgPicture.asset("assets/images/icons/likes.svg"),
        SvgPicture.asset("assets/images/icons/bag.svg"),
        SvgPicture.asset("assets/images/icons/profile.svg"),
      ],
    );
  }
}
