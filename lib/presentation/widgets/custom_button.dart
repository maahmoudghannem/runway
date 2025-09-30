import 'package:flutter/material.dart';
import 'package:runway/presentation/widgets/custom_container.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 55,
      width: 390,
      color: Colors.black,
      child: const Center(
        child: Text(
          "ADD TO BAG",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
