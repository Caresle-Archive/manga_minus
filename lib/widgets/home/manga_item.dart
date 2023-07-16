import 'package:flutter/material.dart';

class MangaItem extends StatelessWidget {
  final String name;
  final String url;

  const MangaItem({
    super.key,
    required this.name,
    required this.url
  });

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    
    return Column(
      children: [
        Container(
          width: ( screen.width - 20 ) / 2,
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          height: 160,
          child: _ImageManga(url: url),
        ),
        Text(name),
      ],
    );
  }
}

class _ImageManga extends StatelessWidget {
  final String url;
  
  const _ImageManga({
    required this.url
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      child: Image.network(
        url,
        fit: BoxFit.cover,  
      ),
    );
  }
}