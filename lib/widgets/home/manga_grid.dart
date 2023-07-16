import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/home/manga_item.dart';

class MangaGrid extends StatelessWidget {
  const MangaGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 8),
      height: screen.height * .60,
      child: GridView.count(
        crossAxisCount: 2,
        children: const [
          MangaItem(name: 'Manga 1',),
          MangaItem(name: 'Manga 2',),
          MangaItem(name: 'Manga 3',),
          MangaItem(name: 'Manga 4',),
          MangaItem(name: 'Manga 5',),
          MangaItem(name: 'Manga 6',),
        ],
      ),
    );
  }
}