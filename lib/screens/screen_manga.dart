import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/manga/favorite_button.dart';
import 'package:manga_minus/widgets/manga/manga_chapter_container.dart';
import 'package:manga_minus/widgets/manga/manga_info.dart';
import 'package:manga_minus/widgets/manga/options_container.dart';

class ScreenManga extends StatelessWidget {
  const ScreenManga({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          const _TopImage(),
          const MangaInfo(),
          const FavoriteButton(),
          const OptionsContainer(),
          Image.network(
            'https://i.ytimg.com/vi/Hi4Hk0CDcjc/maxresdefault.jpg',
          ),
          const SizedBox(height: 12,),
          const MangaChapterContainer(),
        ],
      ),
    );
  }
}

class _TopImage extends StatelessWidget {
  const _TopImage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://yenpress.com/uploads/Oshi-No-Ko-v1cover-HomeD-RV1.jpg")
            )
          ),
          height: 200,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
              colors: [
                Colors.black.withOpacity(0.0),
                Colors.black.withOpacity(.5)
              ],
              stops: const [
                0.0,
                1.0
              ]
            )
          ),
        ),
      ],
    );
  }
}