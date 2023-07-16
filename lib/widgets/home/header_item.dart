import 'package:flutter/material.dart';

class HeaderItem extends StatelessWidget {
  const HeaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    final Size screen = MediaQuery.of(context).size;
    const boxDecoration = BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.all(Radius.circular(4))
    );

    return SafeArea(
      child: Container(
        decoration: boxDecoration,
        child: Image.network(
          "https://areajugones.sport.es/wp-content/uploads/2021/04/imagen-2021-04-15-093751.jpg",
          height: 128,
          width: screen.width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}