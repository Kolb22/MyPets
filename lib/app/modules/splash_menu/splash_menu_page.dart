import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/modules/splash_menu/local_widgets/footer_widget.dart';

import 'splash_menu_controller.dart';

class SplashMenuPage extends StatelessWidget {
  const SplashMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashMenuController>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // White Container top half
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: MediaQuery.of(context).size.height / 1.25,
              decoration: const BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(3, 3),
                    blurRadius: 10,
                    spreadRadius: 2,
                    color: Colors.black45
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/dog.png',
                    height: 250.0,
                    width: 250.0,
                  ),
                ],
              ),
            ),
            // Text bottom part
            const BottomSplashMenuPart(),
          ],
        ),
      ),
    );
  }
}
