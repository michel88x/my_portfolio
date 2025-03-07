import 'package:flutter/material.dart';

class JDirectionality extends StatelessWidget {

  final Widget child;
  const JDirectionality({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.ltr, child: child);
  }
}
