import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/manga/manga_chapter_list.dart';

class MangaChapterContainer extends StatelessWidget {
  const MangaChapterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Column(
      children: [
        _ChapterHeader(screen: screen),
        const MangaChapterList(),
      ],
    );
  }
}

class _ChapterHeader extends StatelessWidget {
  const _ChapterHeader({
    required this.screen,
  });

  final Size screen;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800
      ),
      width: screen.width,
      height: 32,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 16,),
              Text('CHAPTERS', style: TextStyle(fontSize: 16),),
            ],
          ),
          Row(
            children: [
              Icon(Icons.south_rounded),
              SizedBox(width: 16,)
            ],
          ),
        ],
      ),
    );
  }
}