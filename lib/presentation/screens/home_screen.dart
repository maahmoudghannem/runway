import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/presentation/widgets/categories_item.dart';
import 'package:runway/presentation/widgets/custom_app_bar.dart';
import 'package:runway/presentation/widgets/navigation_bar.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/homevideo.mp4")
      ..initialize().then((_) {
        setState(() {
          _controller.pause();
          _controller.setLooping(true);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preffixIcon: "assets/images/icons/drawer.svg",
        title: "assets/images/logo/runwaylogo.svg",
        suffixIcon: "assets/images/icons/notfications.svg",
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : Container(),
            Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Gap(40),
            CategoriesItem(),
            // Gap(),
            Divider(thickness: 2, color: Colors.grey[300]),
            NavigationBarBody(),
          ],
        ),
      ),
    );
  }
}
