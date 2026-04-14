import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Shapes using Primitives")),
        body: Center(
          child: CustomPaint(size: Size(300, 300), painter: ShapePainter()),
        ),
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 9, 91, 232)
      ..style = PaintingStyle.fill;

    // Rectangle
    Rect rect = Rect.fromLTWH(20, 20, 100, 60);
    canvas.drawRect(rect, paint);

    // Circle
    canvas.drawCircle(Offset(200, 70), 40, paint);

    // Triangle
    Path path = Path();
    path.moveTo(100, 200); // first point
    path.lineTo(50, 280); // second point
    path.lineTo(150, 280); // third point
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
