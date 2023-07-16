import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key});

  ButtonStyle buttonStyle() {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.yellow),
      shape: MaterialStateProperty.all(
        const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4)))
      ),
      side: MaterialStateProperty.all(const BorderSide(color: Colors.yellow))
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: screen.width - 25,
        height: 48,
        child: OutlinedButton(
          onPressed: () {},
          style: buttonStyle(),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check),
              SizedBox(width: 5,),
              Text('Favorited')
            ],
          ),
        ),
      ),
    );
  }
}