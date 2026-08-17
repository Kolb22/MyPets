
import 'package:get/get.dart';
import 'splash_menu_controller.dart';

class SplashMenuBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashMenuController());
  }
}