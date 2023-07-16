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
          const _LanguageTag()
        ]
      ),
    );
  }
}

class _LanguageTag extends StatelessWidget {
  const _LanguageTag();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade800,
            Colors.grey.shade700
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(4)
      ),
      child: const Padding(
        padding: EdgeInsets.all(4.0),
        child: Text('ENG', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}