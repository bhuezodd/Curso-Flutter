import 'package:flutter/material.dart';
import 'package:curso_flutter/Place/modal/place.dart';
import 'profile_place.dart';

class ProfilePlacesList extends StatelessWidget {
  Place place = new Place(
    name: 'Knuckles Mountains Range',
    description: 'Hiking. Water fall hunting. Natural bath',
    urlImage: 'Scenery & Photography',
    likes: 123,
  );
  Place place2 = new Place(
    name: 'Knuckles Mountains Range',
    description: 'Hiking. Water fall hunting. Natural bath',
    urlImage: 'Scenery & Photography',
    likes: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          ProfilePlace('assets/img/river.jpeg', place),
          ProfilePlace('assets/img/mountain.jpeg', place2),
        ],
      ),
    );
  }
}
