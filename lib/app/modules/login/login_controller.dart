import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/data/models/pet.dart';
import 'package:pets/app/data/repositories/local/pet_repository.dart';
import 'package:pets/app/routes/app_routes.dart';

class LoginController extends GetxController {
  final PetRepository _petRepository = Get.find<PetRepository>();
  final TextEditingController petCodeController = TextEditingController();
  RxBool isRemembered = false.obs;

  Future<void> submit() async {
    Get.offNamed(AppRoutes.HOME);
  }

  void forgotPassword() {
    Get.snackbar(
      'forgot_password'.tr,
      'Comming soon...',
    );
  }

  Future<void> submitPetCode() async {
    final code = petCodeController.text.trim();

    if (code.isEmpty) {
      Get.snackbar('Pet code required', 'Insert a pet code to continue.');
      return;
    }

    final pets = await _petRepository.getPets();
    Pet? matchingPet;

    for (final pet in pets) {
      if (pet.code.toLowerCase() == code.toLowerCase()) {
        matchingPet = pet;
        break;
      }
    }

    if (matchingPet == null) {
      Get.snackbar('Pet not found', 'No pet matches that code.');
      return;
    }

    Get.toNamed(AppRoutes.PET, arguments: matchingPet);
  }

  @override
  void onClose() {
    petCodeController.dispose();
    super.onClose();
  }
}
