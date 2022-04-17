import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pets/app/global_widgets/logout_icon_button.dart';
import 'package:pets/app/global_widgets/pet_card.dart';
import 'package:pets/app/global_widgets/share_icon_button.dart';
import 'package:pets/app/routes/app_routes.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
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
            actions: const [
              ShareIconButton(id: "213123"),
              LogoutIconButton()
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
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            backgroundColor: Colors.black,
            overlayColor: Colors.black,
            overlayOpacity: 0.4,
            spacing: 5,
            spaceBetweenChildren: 10,
            children: [
              SpeedDialChild(
                child: const Icon(Icons.search),
                  label: "Search",
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold)
              ),
              SpeedDialChild(
                  child: const Icon(Icons.create),
                  label: "Create",
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
