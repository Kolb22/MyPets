import 'package:flutter/material.dart';

class AppMenuButton extends StatelessWidget {
  final List<PopupMenuEntry<String>> items;
  final void Function(String)? onSelected;

  const AppMenuButton({super.key, required this.items, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),
      color: const Color(0xFFffdec8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.black, width: 1.5),
      ),
      onSelected: onSelected,
      itemBuilder: (_) => items,
    );
  }
}
