import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  final Icon icon;
  
  const NavigationItem({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon,
      iconSize: 24,
    );
  }
}