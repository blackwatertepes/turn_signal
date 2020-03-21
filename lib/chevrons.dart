import 'package:flutter/material.dart';

class ChevronLeft extends StatelessWidget {
  ChevronLeft({ this.opacity = 1.0 }) : super();

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ChevronLeftPainter(opacity: opacity),
      size: Size(0.0, 60.0),
    );
  }
}

class ChevronLeftPainter extends CustomPainter {
  ChevronLeftPainter({ this.opacity = 1.0 }) : super();

  final double opacity;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color.fromRGBO(0, 255, 0, opacity);
    Path path = Path();
    path.addPolygon([
      Offset(0.0, 0.0),
      Offset(150.0, 50.0),
      Offset(150.0, 100.0),
      Offset(0.0, 50.0),
      Offset(-150.0, 100.0),
      Offset(-150.0, 50.0),
    ], true);
    canvas.drawPath(path, paint);
  }

  bool shouldRepaint(ChevronLeftPainter oldDelegate) => false;
  bool shouldRebuildSemantics(ChevronLeftPainter oldDelegate) => false;
}

class ChevronRight extends StatelessWidget {
  ChevronRight({ this.opacity = 1.0 }) : super();

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ChevronRightPainter(opacity: opacity),
      size: Size(0.0, 60.0),
    );
  }
}

class ChevronRightPainter extends CustomPainter {
  ChevronRightPainter({ this.opacity = 1.0 }) : super();

  final double opacity;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Color.fromRGBO(0, 255, 0, opacity);
    Path path = Path();
    path.addPolygon([
      Offset(0.0, 0.0),
      Offset(150.0, -50.0),
      Offset(150.0, -100.0),
      Offset(0.0, -50.0),
      Offset(-150.0, -100.0),
      Offset(-150.0, -50.0),
    ], true);
    canvas.drawPath(path, paint);
  }

  bool shouldRepaint(ChevronRightPainter oldDelegate) => false;
  bool shouldRebuildSemantics(ChevronRightPainter oldDelegate) => false;
}
