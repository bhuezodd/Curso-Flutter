import 'package:flutter/material.dart';

class TitleHeader extends StatelessWidget {
  final String title;

  TitleHeader({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold),
    );
  }
}
