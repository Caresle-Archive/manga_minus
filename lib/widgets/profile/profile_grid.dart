import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/profile/profile_item.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      height: 160,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 4,
        physics: const NeverScrollableScrollPhysics(),
        children: const <Widget>[
          ProfileItem(text: '130 Mangas completed'),
          ProfileItem(text: '124 Mangas reading'),
        ],
      ),
    );
  }
}