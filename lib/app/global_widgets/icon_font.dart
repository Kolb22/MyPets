import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {
  final Color? color;
  final double? size;
  final String? iconName;

  const IconFont({Key? key,  this.color, this.size, this.iconName }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/dog_icon.png");
  }
}