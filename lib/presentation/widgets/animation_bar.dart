import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimationBar extends StatefulWidget {
  @override
  _AnimationBarState createState() => _AnimationBarState();
}

class _AnimationBarState extends State<AnimationBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: AnimatedBuilder(
        animation: _controller,

        builder: (_, __) {
          return ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [_controller.value, 3.0, 4.0],
                colors: [Colors.transparent, Colors.black, Colors.black],
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn,
            child: SvgPicture.asset('assets/images/logo/runwayshadow.svg'),
          );
        },
      ),
    );
  }
}
