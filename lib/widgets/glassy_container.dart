
import 'dart:ui';
import 'package:flutter/material.dart';

class GlassyContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? margin;

  const GlassyContainer({Key? key, required this.child, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          margin: margin,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
              width: 1.0,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
