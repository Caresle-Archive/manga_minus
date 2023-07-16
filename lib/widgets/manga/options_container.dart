import 'package:flutter/material.dart';
import 'option_button.dart';

class OptionsContainer extends StatelessWidget {
  const OptionsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return SizedBox(
      height: 64,
      width: screen.width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OptionButton(
            icon: Icon(Icons.info),
            text: 'More Detail',
          ),
          OptionButton(
            icon: Icon(Icons.language),
            text: 'See all language',
          ),
        ],
      ),
    );
  }
}