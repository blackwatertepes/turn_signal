import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'chevrons.dart';

class AnimatedChevronLeft extends StatelessWidget {
  AnimatedChevronLeft({ this.delay = 0, this.duration = 400 }) : super();

  final int delay;
  final int duration;

  @override
    Widget build(BuildContext context) {
    return ControlledAnimation(
      playback: Playback.MIRROR,
      delay: Duration(milliseconds: delay),
      duration: Duration(milliseconds: duration),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, opacity) {
        return Opacity(
          opacity: opacity,
          child: ChevronLeft(),
        );
      },
    );
  }
}

class AnimatedChevronRight extends StatelessWidget {
  AnimatedChevronRight({ this.delay = 0, this.duration = 500}) : super();

  final int delay;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
      playback: Playback.MIRROR,
      delay: Duration(milliseconds: delay),
      duration: Duration(milliseconds: duration),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, opacity) {
        return Opacity(
          opacity: opacity,
          child: ChevronRight(),
        );
      },
    );
  }
}
