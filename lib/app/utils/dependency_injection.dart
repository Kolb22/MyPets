
import 'package:get/get.dart';
import 'package:pets/app/data/providers/local/mobile_provider.dart';

import '../data/repositories/local/mobile_repository.dart';

class DependencyInjection {

  static void init(){

    //Providers
    Get.put(MobileProvider());

    //Repositories
    Get.put(MobileRepository());
  }
}