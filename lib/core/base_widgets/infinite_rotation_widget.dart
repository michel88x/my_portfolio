import 'package:flutter/material.dart';

class InfiniteRotationWidget extends StatefulWidget {

  final Widget child;

  const InfiniteRotationWidget({super.key, required this.child});

  @override
  State<InfiniteRotationWidget> createState() => _InfiniteRotationWidgetState();
}

class _InfiniteRotationWidgetState extends State<InfiniteRotationWidget> with SingleTickerProviderStateMixin{

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 8000),
    )..repeat(); // Infinite rotation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * 3.1416, // Rotates from 0 to 360 degrees
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
