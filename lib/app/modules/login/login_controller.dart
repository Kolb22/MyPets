import 'package:get/get.dart';
import 'package:pets/app/routes/app_routes.dart';

class LoginController extends GetxController{

  String _username = '', _password = '';

  void onUsernameChanged(String text) {
    _username = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  Future<void> submit() async{
    print(_username + " : " + _password);
    Get.offNamed(AppRoutes.HOME);
  }
}