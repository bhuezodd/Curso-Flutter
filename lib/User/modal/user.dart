import 'package:curso_flutter/Place/modal/place.dart';
import 'package:flutter/material.dart';

class User {
  final String uid;
  final String name;
  final String email;
  final String pictureURL;
  final List<Place> myPlaces;
  final List<Place> myFavoritePlace;

  User({
    Key key,
    @required this.uid,
    @required this.name,
    @required this.email,
    @required this.pictureURL,
    this.myPlaces,
    this.myFavoritePlace,
  });
}
