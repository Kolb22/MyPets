import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {
  Color? color;
  double? size;
  String? iconName;

  IconFont({ this.color, this.size, this.iconName });

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/dog_icon.png");
  }
}