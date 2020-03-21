import 'package:flutter/material.dart';

import 'chevrons.dart';
import 'animated_chevrons.dart';

class TurnSignals extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedChevronLeft(delay: 400),
            AnimatedChevronLeft(delay: 300),
            AnimatedChevronLeft(delay: 200),
            AnimatedChevronLeft(delay: 100),
            Container(
              width: 0,
              height: 250,
            ),
            AnimatedChevronRight(delay: 100),
            AnimatedChevronRight(delay: 200),
            AnimatedChevronRight(delay: 300),
            AnimatedChevronRight(delay: 400),
          ],
        ),
      ),
    );
  }
}
