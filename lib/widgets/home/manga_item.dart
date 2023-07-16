import 'package:flutter/material.dart';

class MangaItem extends StatelessWidget {
  final String name;
  
  const MangaItem({
    super.key,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.all(Radius.circular(4))
          ),
          width: ( screen.width - 20 ) / 2,
          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          height: 160,
        ),
        Text(name),
      ],
    );
  }
}