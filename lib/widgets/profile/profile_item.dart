import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  
  const ProfileItem({super.key, required this.text});

  BoxDecoration boxCircleDecoration(Color color) {
    return BoxDecoration(
      color: color,
      shape: BoxShape.circle
    );
  }

  Container circleContainer(double width, Color color) {
    return Container(
      width: width,
      decoration: boxCircleDecoration(color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        circleContainer(128, Colors.grey.shade800),
        circleContainer(96, Colors.teal),
        circleContainer(90, Colors.grey.shade800),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star),
            Text(text)
          ],
        )
      ],
    );
  }
}