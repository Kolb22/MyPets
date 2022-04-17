import 'package:get/get.dart';
import 'package:pets/app/routes/app_routes.dart';


class SplashMenuController extends GetxController{

  @override
  void onReady() {
    _init();
  }

  _init() async {
    try{
     // await Future.delayed(const Duration(seconds: 60));
      //Get.offNamed(AppRoutes.LOGIN);
    } catch (e){
      e.printError();
    }
  }
}