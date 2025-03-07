import 'package:flutter/material.dart';

class HoverImage extends StatefulWidget {

  final String image;
  final Color color;
  final Color hoverColor;
  final double width;
  final double height;
  final BoxFit? fit;
  final VoidCallback? onPressed;

  const HoverImage({
    super.key,
    required this.image,
    required this.color,
    required this.hoverColor,
    required this.width,
    required this.height,
    this.fit,
    this.onPressed
  });

  @override
  State<HoverImage> createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _colorAnimation = ColorTween(
      begin: widget.color,
      end: widget.hoverColor,
    ).animate(_controller);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (hovered){
        if(hovered){
          _controller.forward();
        }else{
          _controller.reverse();
        }
      },
      onTap: widget.onPressed,
      child: AnimatedBuilder(
        animation: _colorAnimation,
        builder: (context, child) {
          return Image.asset(
            widget.image,
            width: widget.width,
            height: widget.height,
            fit: widget.fit,
            color: _colorAnimation.value,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
