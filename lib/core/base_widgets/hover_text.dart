import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';

class HoverText extends StatefulWidget {

  final String text;
  final Color textColor;
  final Color hoverColor;
  final double textSize;
  final TextAlign? textAlign;
  final FontWeight weight;
  final double? width;
  final double? height;
  final VoidCallback? onPressed;

  const HoverText({
    super.key,
    required this.text,
    this.textColor = AppColors.textGrey2,
    this.hoverColor = Colors.white,
    required this.textSize,
    this.weight = FontWeight.normal,
    this.textAlign,
    this.width,
    this.height,
    this.onPressed,
  });

  @override
  State<HoverText> createState() => _HoverTextState();
}

class _HoverTextState extends State<HoverText> with SingleTickerProviderStateMixin{

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
      begin: widget.textColor,
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
          return Container(
            width: widget.width,
            height: widget.height,
            alignment: Alignment.center,
            child: Text(
              widget.text,
              textAlign: widget.textAlign,
              style: TextStyle(
                fontSize: widget.textSize,
                fontWeight: widget.weight,
                color: _colorAnimation.value
              ),
            ),
          );
        }
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
