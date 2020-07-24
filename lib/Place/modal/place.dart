import 'package:curso_flutter/User/modal/user.dart';
import 'package:flutter/cupertino.dart';

class Place {
  String pid;
  String name;
  String description;
  String urlImage;
  int likes;
  User userOwner;

  Place({
    @required this.name,
    @required this.description,
    @required this.urlImage,
    this.likes,
    @required this.userOwner,
  });
}
