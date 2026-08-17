import 'package:get/get.dart';
import 'package:pets/app/data/models/pet.dart';
import 'package:pets/app/data/repositories/local/pet_repository.dart';

class PetListController extends GetxController {
  final PetRepository _petRepository = Get.find<PetRepository>();
  final RxList<Pet> pets = <Pet>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getPets();
  }

  Future<void> getPets() async {
    isLoading.value = true;

    final loadedPets = await _petRepository.getPets();
    pets.assignAll(loadedPets);

    isLoading.value = false;
  }
}
