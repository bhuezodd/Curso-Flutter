import 'package:curso_flutter/Widgets/gradient_back.dart';
import 'package:flutter/material.dart';

class ProfileBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return GradientBack(
      height: screenHeight * 0.45,
    );
  }
}
