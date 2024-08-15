import 'package:flutter/material.dart';

IconButton iconButton(
    {VoidCallback? onTap, IconData? icon, Color? color, double? size}) {
  return IconButton(
    onPressed: onTap,
    icon: Icon(
      icon,
      color: color,
      size: size,
    ),
  );
}
