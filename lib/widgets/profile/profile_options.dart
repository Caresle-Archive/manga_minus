import 'package:flutter/material.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  TextStyle textStyle() {
    return const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          _BackgroundCard(screen: screen),
          Column(
            children: [
              const Icon(Icons.star, size: 128, color: Colors.amber),
              Text('# 123 Chapters read', style: textStyle()
              )
            ],
          )
        ],
      ),
    );
  }
}

class _BackgroundCard extends StatelessWidget {
  const _BackgroundCard({
    required this.screen,
  });

  final Size screen;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screen.width,
      height: 256,
      decoration: BoxDecoration(
        color: Colors.grey.shade800
      ),
    );
  }
}