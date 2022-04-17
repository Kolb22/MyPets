import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/routes/app_routes.dart';

class LogoutIconButton extends StatelessWidget {
  const LogoutIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.logout),
      onPressed: () {
        Get.offNamed(AppRoutes.SPLASH_MENU);
      },
    );
  }
}
