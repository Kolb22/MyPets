import 'package:flutter/material.dart';

import 'icon_font.dart';


class PetIcon extends StatelessWidget {
  final Color? color;
  final String? iconName;
  final double size;
  final double padding;

  const PetIcon({Key? key,
    this.color,
    this.iconName,
    this.size = 20,
    this.padding = 10
  }) : super(key: key);

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