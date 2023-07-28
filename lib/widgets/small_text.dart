import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double? size;
  double? height;

  SmallText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.size = 12,
      this.height,  
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        height: height
      ),
    );
  }
}
