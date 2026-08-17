import 'package:flutter/material.dart';

import 'icon_font.dart';


class PetIcon extends StatelessWidget {
  final Color? color;
  final String? iconName;
  final double size;
  final double padding;

  const PetIcon({
    super.key,
    this.color,
    this.iconName,
    this.size = 20,
    this.padding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
          color: color,
          padding: EdgeInsets.all(padding),
          child: IconFont(
              color: Colors.white, iconName: iconName, size: size)),
    );
  }
}