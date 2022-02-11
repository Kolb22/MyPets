import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/global_widgets/pet_card.dart';
import 'package:pets/app/routes/app_routes.dart';
import 'package:share_plus/share_plus.dart';
import 'pet_list_controller.dart';

class PetListPage extends StatelessWidget {
  const PetListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PetListController>(
      builder: (_) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            iconTheme: const IconThemeData(
              color: Colors.black, //change your color here
            ),
            title: const Text("My Pets",
                style: TextStyle(
                color: Colors.black
            )),
            backgroundColor: const Color(0xFFffdec8),
            actions: [
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  Share.share("The number of my list is:");
                },
              ),
              // add more IconButton
            ],
          ),
          backgroundColor: const Color(0xFFffdec8),
          body:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext ctx, int index) {
                      return PetCard(
                          onCardClick: () {
                            Get.toNamed(AppRoutes.PET);
                          }
                      );
                    },
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}
