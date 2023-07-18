import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/home/manga_item.dart';

final List<Map<String, String>> mangasList = [
  {
    "name": "Manga 1",
    "img": "https://assets.goodereader.com/blog/uploads/images/2021/05/31235246/jujutsu-kaisen-1613518270587.jpg"
  },
  {
    "name": "Manga 2",
    "img": "https://m.media-amazon.com/images/I/51QQayMhqcL._AC_UF1000,1000_QL80_.jpg",
  },
  {
    "name": "Manga 3",
    "img": "https://i.blogs.es/156d48/shonen-jump/450_1000.jpeg",
  },
  {
    "name": "Manga 4",
    "img": "https://yenpress.com/uploads/Oshi-No-Ko-v1cover-HomeD-RV1.jpg",
  },
  {
    "name": "Manga 5",
    "img": "https://zonaduscae.files.wordpress.com/2020/11/kimisen-mprf-1.png?w=1024",
  },
  {
    "name": "Manga 6",
    "img": "https://images.cdn3.buscalibre.com/fit-in/360x360/5c/55/5c558c0472e5b78726e7c703aa5a55e8.jpg",
  }
];

class MangaGrid extends StatelessWidget {
  const MangaGrid({super.key});

  List<MangaItem> mangas() {
    List<MangaItem> mangasToReturn = [];
    for (var manga in mangasList) {
      if (manga["name"] != null && manga["img"] != null) {
        mangasToReturn.add(MangaItem(name: manga["name"] as String, url: manga["img"] as String));
      }
    }
    return mangasToReturn;
  }

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 8),
      height: screen.height * .60,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          ...mangas()
        ],
      ),
    );
  }
}