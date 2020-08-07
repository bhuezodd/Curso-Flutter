import 'package:flutter/material.dart';
import 'package:curso_flutter/Widgets/floating_action_button_green.dart';

class CardImageWithFab extends StatelessWidget {
  final double height;
  final double width;
  final double left;
  final double top;
  final String pathImage;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;

  CardImageWithFab({
    Key key,
    @required this.pathImage,
    @required this.left,
    @required this.top,
    @required this.height,
    @required this.width,
    @required this.iconData,
    @required this.onPressedFabIcon,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: top, left: left),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: <Widget>[
        card,
        FloatingActionButtonGreen(
          iconData: iconData,
          onPressed: onPressedFabIcon,
        )
      ],
    );
  }
}
