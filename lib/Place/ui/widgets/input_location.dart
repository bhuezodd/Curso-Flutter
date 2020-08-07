import 'package:flutter/material.dart';

class InputLocation extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData iconData;
  @override
  InputLocation({
    Key key,
    @required this.controller,
    @required this.hintText,
    @required this.iconData,
  });

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.url,
        maxLines: 1,
        style: TextStyle(
          fontSize: 15,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(iconData),
          fillColor: Colors.white,
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black12,
          blurRadius: 15,
          offset: Offset(0.0, 0.7),
        ),
      ]),
    );
  }
}
