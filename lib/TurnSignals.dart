import 'package:flutter/material.dart';

import 'signals.dart';

class TurnSignals extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignalLeft(),
            Container(
              width: 200,
              height: 200,
            ),
            SignalRight(),
          ],
        ),
      ),
    );
  }
}
