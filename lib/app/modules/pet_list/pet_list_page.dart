import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/global_widgets/app_menu_button.dart';
import 'package:pets/app/global_widgets/pet_card.dart';
import 'package:pets/app/routes/app_routes.dart';
import 'package:share_plus/share_plus.dart';
import 'pet_list_controller.dart';

class PetListPage extends GetView<PetListController> {
  const PetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape:
              const Border(bottom: BorderSide(color: Colors.black, width: 1.5)),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: const Text("My Pets", style: TextStyle(color: Colors.black)),
          backgroundColor: const Color(0xFFffdec8),
          actions: [
            AppMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 'search':
                    break;
                  case 'create':
                    Get.toNamed(AppRoutes.PET);
                    break;
                  case 'share':
                    SharePlus.instance.share(
                      ShareParams(text: "The number of my list is: 213123"),
                    );
                    break;
                  case 'logout':
                    Get.offNamed(AppRoutes.SPLASH_MENU);
                    break;
                }
              },
              items: const [
                PopupMenuItem(
                  value: 'search',
                  child: ListTile(
                    leading: Icon(Icons.search, color: Colors.black),
                    title: Text("Search"),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
                PopupMenuItem(
                  value: 'create',
                  child: ListTile(
                    leading: Icon(Icons.create, color: Colors.black),
                    title: Text("Create"),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
                PopupMenuItem(
                  value: 'share',
                  child: ListTile(
                    leading: Icon(Icons.share, color: Colors.black),
                    title: Text("Share"),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
                PopupMenuItem(
                  value: 'logout',
                  child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.black),
                    title: Text("Logout"),
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: const Color(0xFFffdec8),
        body: Obx(
          () => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: controller.pets.length,
                        itemBuilder: (BuildContext ctx, int index) {
                          final pet = controller.pets[index];
                          return PetCard(
                            name: pet.name,
                            animal: pet.animal,
                            imageUrl: pet.imageUrl,
                            onCardClick: () {
                              Get.toNamed(AppRoutes.PET, arguments: pet);
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
        ),
        // floatingActionButton removido
      ),
    );
  }
}
