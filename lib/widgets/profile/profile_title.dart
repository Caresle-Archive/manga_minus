import 'package:flutter/material.dart';

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(4)
          ),
          width: screen.width - 40,
          height: 64,
        ),
        const Row(
          children: [
            SizedBox(
              width: 64,
              height: 64,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/originals/71/ca/07/71ca07d99f84421601f135494224d022.png',
                  )
                ),
              ),
            ),
            Text('Profile Name')
          ],
        ),
      ] 
    );
  }
}