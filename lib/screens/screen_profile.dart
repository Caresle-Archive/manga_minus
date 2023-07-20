import 'package:flutter/material.dart';
import 'package:manga_minus/widgets/manga/app_bar_manga.dart';
import 'package:manga_minus/widgets/navigation/navigation_menu.dart';
import 'package:manga_minus/widgets/profile/profile_grid.dart';
import 'package:manga_minus/widgets/profile/profile_options.dart';
import 'package:manga_minus/widgets/profile/profile_title.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarManga(),
      bottomNavigationBar: NavigationMenu(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: _ScreenContent(),
          ),
        ),
      ),
    );
  }
}

class _ScreenContent extends StatelessWidget {
  const _ScreenContent();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProfileTitle(),
        ProfileOptions(),
        ProfileGrid()
      ],
    );
  }
}