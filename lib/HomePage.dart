import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Center(
        child: SizedBox(
          child: TyperAnimatedTextKit(
            text: [
              "<     ",
            ],
            textStyle: TextStyle(
              color: Color(0xFF00FF00),
              fontSize: 380.0,
              fontFamily: "Bobbers",
            ),
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.topStart // or Alignment.topLeft
          ),
        ),
      ),
    );
  }
}
