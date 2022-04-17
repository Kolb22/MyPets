import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/routes/app_routes.dart';
import 'dart:math' as math;

class BottomSplashMenuPart extends StatelessWidget {
  const BottomSplashMenuPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height));
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: ScreenUtil().setHeight(50),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/hueso.png"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.black, width: 4),
                gradient: const LinearGradient(
                    colors: [Color(0xFFffdec8), Color(0xFF4b3306)]),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(3, 3),
                      blurRadius: 10,
                      spreadRadius: 2,
                      color: Colors.black26)
                ],
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: TextButton(
                onPressed: () => {Get.toNamed(AppRoutes.LOGIN)},
                style: TextButton.styleFrom(
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0)),
                ),
                child: const Center(
                  child: Text("Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Poppins-Bold",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0)),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Container(
                height: ScreenUtil().setHeight(50),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/hueso.png"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.black, width: 4),
                  gradient: const LinearGradient(
                      colors: [Color(0xFFffdec8), Color(0xFF4b3306)]),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(3, 3),
                        blurRadius: 10,
                        spreadRadius: 2,
                        color: Colors.black26)
                  ],
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: TextButton(
                  onPressed: () => {Get.toNamed(AppRoutes.REGISTER)},
                  style: TextButton.styleFrom(
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                  ),
                  child: Center(
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: const Text("Register",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins-Bold",
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0)),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
          ],
        ),
      ),
    );
  }
}
