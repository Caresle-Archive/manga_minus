import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final Icon icon;

  const OptionButton({
    super.key,
    required this.text,
    required this.icon,
  });

  ButtonStyle buttonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.grey.shade700),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        )
      ),
      side: MaterialStateProperty.all(const BorderSide(color: Colors.black)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 48,
      width: screen.width / 2 - 15,
      child: OutlinedButton(
        onPressed: () {},
        style: buttonStyle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(text)
          ],
        ),
      ),
    );
  }
}