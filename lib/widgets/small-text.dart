import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class smallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;

  smallText(
      {super.key,
      this.color,
      required this.text,
      this.size = 12,
      this.height = 1.2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height,
      ),
    );
  }
}
