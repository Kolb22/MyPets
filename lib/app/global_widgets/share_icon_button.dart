import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ShareIconButton extends StatelessWidget {
  const ShareIconButton({super.key, required this.id});

  final String? id;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.share),
      onPressed: () {
        SharePlus.instance.share(ShareParams(text: "The number of my list is: $id"));
      },
    );
  }
}
