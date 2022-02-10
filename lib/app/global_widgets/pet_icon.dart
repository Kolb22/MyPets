import 'package:flutter/material.dart';

import 'icon_font.dart';


class PetIcon extends StatelessWidget {
  Color? color;
  String? iconName;
  double size;
  double padding;

  PetIcon({Key? key,
    this.color,
    this.iconName,
    this.size = 20,
    this.padding = 10
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
          color: this.color,
          padding: EdgeInsets.all(this.padding),
          child: IconFont(
              color: Colors.white, iconName: this.iconName, size: this.size)),
    );
  }
}