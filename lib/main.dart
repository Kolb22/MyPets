import 'package:pets/app/modules/splash/splash_binding.dart';
import 'package:pets/app/modules/splash/splash_page.dart';
import 'package:pets/app/utils/dependency_injection.dart';
import 'package:pets/app/utils/message_bundle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        translations: Messages(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('en', 'US'),
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
        initialBinding: SplashBinding(),
        getPages: AppPages.pages,
      ),
    );
  }
}

