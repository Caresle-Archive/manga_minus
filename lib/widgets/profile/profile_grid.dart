import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/profile/profile_item.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 256,
      height: 256,
      child: GridView.count(
        crossAxisCount: 2,
        children: const <Widget>[
          ProfileItem(),
          ProfileItem(),
        ],
      ),
    );
  }
}