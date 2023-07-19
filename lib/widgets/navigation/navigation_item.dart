import 'package:flutter/material.dart';
import 'package:manga_minus/screens/screen_profile.dart';

class NavigationItem extends StatelessWidget {
  final Icon icon;
  final bool selected;

  const NavigationItem({
    super.key,
    required this.icon,
    this.selected = false
  });

  void goToProfile(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ScreenProfile(),)
    );
  }

  IconButton general(context) {
    return IconButton(onPressed: () => goToProfile(context), icon: icon, iconSize: 24,);
  }

  IconButton primary(context) {
    return IconButton(onPressed: () => goToProfile(context), icon: icon, color: Colors.pink, iconSize: 24,);
  }

  @override
  Widget build(BuildContext context) {
    return selected ? primary(context) : general(context);
  }
}