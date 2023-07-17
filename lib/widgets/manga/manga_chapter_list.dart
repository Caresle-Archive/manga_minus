import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/manga/manga_chapter.dart';

class MangaChapterList extends StatelessWidget {
  const MangaChapterList({super.key});

  List<MangaChapter> displayChapters() {
    List<MangaChapter> chapters = [];

    for (var i = 0; i < 10; i++) {
      chapters.add(const MangaChapter());
    }
    return chapters;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...displayChapters()
        ],
      ),
    );
  }
}