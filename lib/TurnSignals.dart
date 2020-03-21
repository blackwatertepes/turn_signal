import 'package:flutter/material.dart';

import 'signals.dart';

class TurnSignals extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignalLeft(),
            Container(
              width: 0,
              height: 200,
            ),
            SignalRight(),
          ],
        ),
      ),
    );
  }
}
