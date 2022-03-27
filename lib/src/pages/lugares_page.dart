import 'package:flutter/material.dart';

class LugaresPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              CircleAvatar(radius: 50,),
              CircleAvatar(radius: 50,),
              CircleAvatar(radius: 50,),
              CircleAvatar(radius: 50,),
              CircleAvatar(radius: 50,),
              CircleAvatar(radius: 50,),
              CircleAvatar(radius: 50,),
              CircleAvatar(radius: 50,),
              CircleAvatar(radius: 50,),
            ],
          ),
        )
      ],
    );
  }
}
