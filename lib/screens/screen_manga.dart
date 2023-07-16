import 'package:flutter/material.dart';

class ScreenManga extends StatelessWidget {
  const ScreenManga({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _TopImage(),
        const Text(
          'Manga Title',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('Manga Author',
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16
          ),
        ),
        SizedBox(
          width: 200,
          child: OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.yellow),
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)))
              ),
              side: MaterialStateProperty.all(const BorderSide(color: Colors.yellow))
            ),
            child: const Text('Favorited'),
          ),
        )

      ],
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