import 'package:get/get.dart';
import 'package:pets/app/data/providers/local/mobile_provider.dart';
import 'package:pets/app/data/providers/local/pet_provider.dart';

import '../data/repositories/local/mobile_repository.dart';
import '../data/repositories/local/pet_repository.dart';

class DependencyInjection {
  static void init() {
    //Providers
    Get.put(MobileProvider());
    Get.put(PetProvider());

    //Repositories
    Get.put(MobileRepository());
    Get.put(PetRepository());
  }
}
