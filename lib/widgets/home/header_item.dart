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
        child: SizedBox(
          width: screen.width,
          height: 128,
        ),
      ),
    );
  }
}