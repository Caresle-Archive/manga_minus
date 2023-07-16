import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/navigation/navigation_item.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return BottomAppBar(
      height: 64,
      color: colors.background,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationItem(icon: Icon(Icons.calendar_month)),
          NavigationItem(icon: Icon(Icons.stars)),
          NavigationItem(icon: Icon(Icons.search)),
          NavigationItem(icon: Icon(Icons.book)),
          NavigationItem(icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}