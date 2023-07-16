import 'package:flutter/material.dart';

class MangaInfo extends StatelessWidget {
  const MangaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    
    return SizedBox(
      width: screen.width - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ]
      ),
    );
  }
}