import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Color color;
  final Color? textColor;
  final bool shadow;
  final String name;

  const ButtonWidget({
    required this.name,
    required this.onPressed,
    this.color = Colors.white,
    this.textColor,
    this.shadow = false,
  });

  @override
  Widget build(BuildContext context) {
    final elevatedButtonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(
        horizontal: 60.0,
        vertical: 13.0,
      ),
      shadowColor: Colors.blueAccent,
      elevation: 10.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
    );
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        this.name,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12.0,
        ),
      ),
      style: elevatedButtonStyle,
    );
  }
}
