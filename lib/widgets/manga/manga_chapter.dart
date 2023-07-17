import 'package:flutter/material.dart';

class MangaChapter extends StatelessWidget {
  const MangaChapter({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade800
        ),
        width: screen.width - 20,
        height: 96,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://pack-yak.intomanga.com/images/manga/One-Piece/chapter/1087/page/1/073ef301-d5ff-4186-b88c-a1741007e6f1",
                width: 96,
                fit: BoxFit.cover,
              ),
            ),
            const _MangaChapterInfo(),
          ]
        ),
      ),
    );
  }
}

class _MangaChapterInfo extends StatelessWidget {
  const _MangaChapterInfo();

  TextStyle textStyleChapterNumber() {
    return const TextStyle(
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle textStyleChapterDate() {
    return TextStyle(
      color: Colors.grey.shade500
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              const SizedBox(width: 10,),
              Text('#001', style: textStyleChapterNumber(),),
              const SizedBox(width: 30,),
              Text('16/07/2023', style: textStyleChapterDate())
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: [
              SizedBox(width: 10,),
              Text('Chapter 1: Chapter title')
            ],
          ),
        ),
      ],
    );
  }
}