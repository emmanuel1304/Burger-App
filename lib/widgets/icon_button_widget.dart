import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  const CustomIconButton({ 
    super.key,
    required this.icon,
    this.backgroundColor=const Color.fromARGB(255, 115, 240, 180),
    this.iconColor= Colors.white,
    this.size = 40,
    });

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: size,
      height: size,
      decoration: BoxDecoration( 
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size!/2)
      ),
      child: Icon( 
        icon,
        color: iconColor,
        size: 16,
      ),
    );
  }
}
