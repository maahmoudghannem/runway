import 'package:flutter/material.dart';
import 'package:runway/presentation/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preffixIcon: "assets/images/icons/drawer.svg",
        title: "assets/images/logo/runwaylogo.svg",
        suffixIcon: "assets/images/icons/notfications.svg",
      ),
      backgroundColor: Colors.white,
      body: Column(children: [


      ],
    ),
    );
  }
}
