import 'package:get/get.dart';

class SplashMenuController extends GetxController{

  @override
  void onReady() {
    _init();
  }

  Future<void> _init() async {
    try{
     // await Future.delayed(const Duration(seconds: 60));
      //Get.offNamed(AppRoutes.LOGIN);
    } catch (e){
      e.printError();
    }
  }
}