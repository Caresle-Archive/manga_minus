import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/home/header_item.dart';
import 'package:manga_minus/widgets/home/manga_grid.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderItem(),
        SizedBox(height: 16),
        _TitleSection(),
        MangaGrid(),
      ],
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'LATEST UPDATE',
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}