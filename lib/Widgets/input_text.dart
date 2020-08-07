import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextEditingController controller;
  final int maxLines;

  InputText(
      {Key ket,
      @required this.hintText,
      @required this.inputType,
      @required this.controller,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        style: TextStyle(
            fontSize: 15,
            fontFamily: "Lato",
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFe5e5e5),
          border: InputBorder.none,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFFe5e5e5),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(
              color: Color(0xFFe5e5e5),
            ),
          ),
        ),
      ),
    );
  }
}
