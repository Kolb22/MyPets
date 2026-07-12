import 'package:get/get.dart';
import 'package:pets/app/routes/app_routes.dart';

class LoginController extends GetxController{

  Future<void> submit() async{
    
    Get.offNamed(AppRoutes.HOME);
  }
}