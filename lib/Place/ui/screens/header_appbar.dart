import 'package:flutter/material.dart';
import 'package:curso_flutter/Place/ui/widgets/card_image_list.dart';
import 'package:curso_flutter/Widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[GradientBack("Bienvenido"), CardImageList()],
    );
  }
}
