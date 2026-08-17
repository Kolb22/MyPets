import 'package:get/get.dart';
import 'package:pets/app/data/models/pet.dart';
import 'package:pets/app/data/providers/local/pet_provider.dart';

class PetRepository {
  final PetProvider _petProvider = Get.find<PetProvider>();

  Future<List<Pet>> getPets() => _petProvider.getPets();
}
