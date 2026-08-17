import 'package:get/get.dart';
import 'package:pets/app/routes/app_routes.dart';


class SplashController extends GetxController{

  @override
  void onReady() {
    _init();
  }

  Future<void> _init() async {
    try{
      await Future.delayed(const Duration(seconds: 4));
      Get.offNamed(AppRoutes.SPLASH_MENU);
    } catch (e){
      e.printError();
    }
  }
}