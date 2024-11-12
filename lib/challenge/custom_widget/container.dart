import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final double borderRadius;
  final double padding;
  final double margin;
  final Widget? child;
  final double height;
  final double width;

  const CustomContainer(
      {super.key,
      required this.color,
      required this.borderRadius,
      required this.padding,
      required this.margin,
      this.child,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius)),
      child: child,
    );
  }
}
