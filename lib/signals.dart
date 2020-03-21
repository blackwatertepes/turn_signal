import 'package:flutter/material.dart';

import 'animated_chevrons.dart';

class SignalLeft extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedChevronLeft(delay: 400),
        AnimatedChevronLeft(delay: 300),
        AnimatedChevronLeft(delay: 200),
        AnimatedChevronLeft(delay: 100),
      ],
    );
  }
}

class SignalRight extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedChevronRight(delay: 100),
        AnimatedChevronRight(delay: 200),
        AnimatedChevronRight(delay: 300),
        AnimatedChevronRight(delay: 400),
      ],
    );
  }
}
