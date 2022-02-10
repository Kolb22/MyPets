
import 'package:get/get.dart';
import 'pet_list_controller.dart';

class PetListBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PetListController());
  }
}