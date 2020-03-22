import 'package:flutter/material.dart';
import 'dart:async';

import 'animated_chevrons.dart';

class SignalLeft extends StatefulWidget {

  @override
  SignalLeftState createState() => SignalLeftState();
}

class SignalLeftState extends State<SignalLeft> {

  final int timeToLive = 8000;
  bool signaling = false;

  _triggerSignal() {
    setState(() {
      signaling = true;
    });

    Timer(Duration(milliseconds: timeToLive), () {
      setState(() {
        signaling = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _triggerSignal();
      },
      child: !signaling ? Container(
        width: 290,
        height: 300,
        color: Color(0x00FF0000),
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedChevronLeft(delay: 400),
          AnimatedChevronLeft(delay: 300),
          AnimatedChevronLeft(delay: 200),
          AnimatedChevronLeft(delay: 100),
        ],
      ),
    );
  }
}

class SignalRight extends StatefulWidget {

  @override
  SignalRightState createState() => SignalRightState();
}

class SignalRightState extends State<SignalRight> {

  final int timeToLive = 8000;
  bool signaling = false;

  _triggerSignal() {
    setState(() {
      signaling = true;
    });

    Timer(Duration(milliseconds: timeToLive), () {
      setState(() {
        signaling = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _triggerSignal();
      },
      child: !signaling ? Container(
        width: 290,
        height: 300,
        color: Color(0x00FF0000),
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedChevronRight(delay: 100),
          AnimatedChevronRight(delay: 200),
          AnimatedChevronRight(delay: 300),
          AnimatedChevronRight(delay: 400),
        ],
      ),
    );
  }
}
