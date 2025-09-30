import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:runway/presentation/widgets/custom_container.dart';

class ReturnCard extends StatelessWidget {
  const ReturnCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          ListTile(
            leading: SvgPicture.asset("assets/images/icons/delivery.svg"),
            title: Text(
              "Free delivery",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          Divider(height: 1, thickness: 1, color: Colors.grey[200]),
          ListTile(
            leading: SvgPicture.asset("assets/images/icons/return.svg"),
            title: Text(
              "Free return",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            trailing: Text(
              "View return policy",
              style: TextStyle(fontSize: 14, color: Color(0xff999797)),
            ),
            onTap: () {
              // TODO: handle return policy tap
            },
          ),
        ],
      ),
    );
  }
}
