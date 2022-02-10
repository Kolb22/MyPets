import 'package:get/get.dart';
import 'package:pets/app/modules/pet/pet_controller.dart';

class PetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PetController());
  }
}
