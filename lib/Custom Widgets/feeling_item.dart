import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz/Screens/Moody_Screen/moody_screen.dart';

class FeelingItem extends StatelessWidget {
  const FeelingItem({super.key, required this.text, required this.iconPath});

  final String text;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            child: SvgPicture.asset(
              iconPath,
              fit: BoxFit.none,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(text)
      ],
    );
  }
}
