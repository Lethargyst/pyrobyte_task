import 'dart:math';

import 'package:flutter/material.dart';

const waveHeight = 5;

class AnimatedLoading extends StatefulWidget {
  const AnimatedLoading({ 
    super.key,
    this.startPercentage = 0,
    this.loadingSpeed = 10,
    this.width = 160,
    this.height = 160
  });

  final int startPercentage;
  final int loadingSpeed;
  final double width;
  final double height;

  @override
  State<AnimatedLoading> createState() => _AnimatedLoadingState();
}

class _AnimatedLoadingState extends State<AnimatedLoading> with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(seconds: (100 - widget.startPercentage) ~/ widget.loadingSpeed),
      vsync: this
    );
    _animation = Tween<double>(
      begin: widget.startPercentage.toDouble(), 
      end: widget.height + waveHeight * 2
    ).animate(
      _animationController
    );

    _animationController.addListener(() => setState((){}));
    _animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Container(
        width: widget.width,
        height: widget.height,
        color: Colors.white,
        child: CustomPaint(
          painter: WavePainter(
            offset: _animation.value 
          ),
        ),
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  WavePainter({
    required this.offset,
  });

  final double offset;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0x99218CEF)
      ..style = PaintingStyle.fill;

    Path path = Path();

    for (double x = 0; x < size.width; x++) {
      path.lineTo(
        x,
        size.height - sin((x + offset) * 0.1) * waveHeight - offset + waveHeight
      );
    }

    path
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}