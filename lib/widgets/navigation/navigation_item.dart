import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  final Icon icon;
  final bool selected;

  const NavigationItem({
    super.key,
    required this.icon,
    this.selected = false
  });

  IconButton general() {
    return IconButton(onPressed: () {}, icon: icon, iconSize: 24,);
  }

  IconButton primary() {
    return IconButton(onPressed: () {}, icon: icon, color: Colors.pink, iconSize: 24,);
  }

  @override
  Widget build(BuildContext context) {    
    return selected ? primary() : general();
  }
}