import 'package:flutter/material.dart';
import 'package:manga_minus/screens/screen_home.dart';

class AppBarManga extends StatelessWidget implements PreferredSizeWidget {
  const AppBarManga({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white,),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ScreenHome(),)
          );
        },
      ),
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share, color: Colors.white),
          ),
        )
      ],
    );
  }
}