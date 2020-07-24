import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {
  double width, height;
  final String text;
  final Function onTap;

  ButtonGreen(
      {Key key,
      @required this.text,
      @required this.onTap,
      this.width,
      this.height});
  @override
  _ButtonGreenState createState() => _ButtonGreenState();
}

class _ButtonGreenState extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFFE45656), // Top
              Color(0xFFAA3939), // Bottom
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: "Lato",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
