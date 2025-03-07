import 'package:flutter/material.dart';

class ZoomOnHover extends StatefulWidget {
  final Widget child;
  final bool hovered;
  const ZoomOnHover({super.key, required this.child, required this.hovered});

  @override
  _ZoomOnHoverState createState() => _ZoomOnHoverState();
}

class _ZoomOnHoverState extends State<ZoomOnHover> {

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      transform: Matrix4.identity()..scale(widget.hovered? 1.1 : 1.0),
      transformAlignment: Alignment.center,
      child: widget.child,
    );
  }
}