import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'home_screen.dart';
import '../widgets/animation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String id = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.pushNamed(context, HomeScreen.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/images/logo/runwaylogo.svg"),
            Gap(10),
            AnimationBar(),
          ],
        ),
      ),
    );
  }
}
