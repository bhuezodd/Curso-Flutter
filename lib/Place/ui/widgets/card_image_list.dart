import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFab(
            height: 350.0,
            width: 250,
            top: 80,
            left: 20,
            pathImage: "assets/img/beach_palm.jpeg",
            onPressedFabIcon: null,
            iconData: Icons.favorite_border,
          ),
          CardImageWithFab(
            height: 350.0,
            width: 250,
            top: 80,
            left: 20,
            pathImage: "assets/img/mountain.jpeg",
            onPressedFabIcon: null,
            iconData: Icons.favorite_border,
          ),
          CardImageWithFab(
            height: 350.0,
            width: 250,
            top: 80,
            left: 20,
            pathImage: "assets/img/mountain_stars.jpeg",
            onPressedFabIcon: null,
            iconData: Icons.favorite_border,
          ),
          CardImageWithFab(
            height: 350.0,
            width: 250,
            top: 80,
            left: 20,
            pathImage: "assets/img/river.jpeg",
            onPressedFabIcon: null,
            iconData: Icons.favorite_border,
          ),
          CardImageWithFab(
            height: 350.0,
            width: 250,
            top: 80,
            left: 20,
            pathImage: "assets/img/sunset.jpeg",
            onPressedFabIcon: null,
            iconData: Icons.favorite_border,
          ),
        ],
      ),
    );
  }
}
