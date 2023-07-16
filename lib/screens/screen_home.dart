import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/home/header_item.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const HeaderItem(),
    );
  }
}